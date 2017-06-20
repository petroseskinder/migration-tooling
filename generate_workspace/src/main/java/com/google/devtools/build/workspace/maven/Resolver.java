// Copyright 2015 The Bazel Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package com.google.devtools.build.workspace.maven;

import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import org.apache.maven.model.Dependency;
import org.apache.maven.model.Model;
import org.apache.maven.model.Parent;
import org.apache.maven.model.Repository;
import org.apache.maven.model.building.DefaultModelProcessor;
import org.apache.maven.model.building.FileModelSource;
import org.apache.maven.model.building.ModelSource;
import org.apache.maven.model.io.DefaultModelReader;
import org.apache.maven.model.locator.DefaultModelLocator;
import org.apache.maven.model.resolution.UnresolvableModelException;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;

import java.io.File;
import java.io.IOException;
import java.lang.invoke.MethodHandles;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

import static com.google.devtools.build.workspace.maven.ShaDownloader.downloadSha1;
import static com.google.devtools.build.workspace.maven.VersionResolver.resolveVersion;

/**
 * Resolves Maven dependencies.
 */
public class Resolver {

  private final static Logger logger = Logger.getLogger(
      MethodHandles.lookup().lookupClass().getName());

  private static final String COMPILE_SCOPE = "compile";

  private final DefaultModelResolver modelResolver;

  // Mapping of maven_jar name to Rule.
  private final Map<String, Rule> deps;

  public Resolver(DefaultModelResolver resolver) {
    this.deps = Maps.newHashMap();
    this.modelResolver = resolver;
  }

  /**
   * Returns all maven_jars.
   */
  public Collection<Rule> getRules() {
    return deps.values();
  }

  public DefaultModelResolver getModelResolver() {
    return modelResolver;
  }

  /**
   * Resolves an artifact as a root of a dependency graph.
   */
  public void resolveArtifact(String artifactCoord) {
    // This method is only called from the original generate_workspace function
    // so each of the artifacts, you actually know exactly what version they are.
    // however, it still can be a range, or a blank.
    // TODO how does this behave if you pass it a weird version range
    Artifact artifact;
    ModelSource modelSource;
    try {

      // This is only downloaded once, and again you should use the highest version.
      // This simply creates the artifact, given the coordinates.
      // It does nothing to the actual version, like selecting the version.
      // e.g. com.treasuredata.client:td-client:jar:[0.7,)
      artifact = getArtifact(artifactCoord);

      // goes and attempts to resolve a specific artifact
      // This means going to each repository, and then, constructing
      // a URL from the model name (implicitly creating a version), and
      // trying to download the pom file for that version.
      // If the artifact exists already, it calls it quits. TODO fix that.
      // This just gets the model source rather than construct the
      // actual graph of dependencies.
      modelSource = modelResolver.resolveModel(artifact);
    } catch (UnresolvableModelException | InvalidArtifactCoordinateException e) {
      logger.warning(e.getMessage());
      return;
    }

    Rule rule = new Rule(artifact);
    deps.put(rule.name(), rule); // add the artifact rule to the workspace

    // takes the model source obtained before and constructs a dependency graph
    // by downloading the poms and recursively attacking each dependent node.
    // from those dependencies.
    resolveEffectiveModel(modelSource, Sets.<String>newHashSet(), rule);
  }


  /**
   * Given a local path to a Maven project, this attempts to find the transitive dependencies of
   * the project.
   *
   * @param projectPath The path to search for Maven projects.
   */
  public String resolvePomDependencies(String projectPath) {
    DefaultModelProcessor processor = new DefaultModelProcessor();
    processor.setModelLocator(new DefaultModelLocator());
    processor.setModelReader(new DefaultModelReader());
    File pom = processor.locatePom(new File(projectPath));
    FileModelSource pomSource = new FileModelSource(pom);
    // First resolve the model source locations.
    resolveSourceLocations(pomSource);
    // Next, fully resolve the models.
    resolveEffectiveModel(pomSource, Sets.<String>newHashSet(), null);
    return pom.getAbsolutePath();
  }


  /**
   * Resolves all dependencies from a given "model source," which could be either a URL or a local
   * file.
   */
  private void resolveEffectiveModel(
      ModelSource modelSource, Set<String> exclusions, Rule parent) {
    Model model = modelResolver.getEffectiveModel(modelSource);
    if (model == null) {
      return;
    }
    logger.info("\tDownloading pom for " + model.getGroupId() + ":"
        + model.getArtifactId() + ":" + model.getVersion());
    for (Repository repo : model.getRepositories()) {
      // FIXME Why is this being called every iteration????
      modelResolver.addRepository(repo);
    }

    for (Dependency dependency : model.getDependencies()) {
      //TODO(petros): Add support for non-compile scoped dependencies.
      if (!dependency.getScope().equals(COMPILE_SCOPE)) {
        continue;
      }
      if (dependency.isOptional()) {
        continue;
      }
      if (exclusions.contains(dependency.getGroupId() + ":" + dependency.getArtifactId())) {
        continue;
      }
      try {
        Rule artifactRule = new Rule(getArtifact(dependency), dependency.getExclusions());
        HashSet<String> localDepExclusions = new HashSet<>(exclusions);
        localDepExclusions.addAll(artifactRule.getExclusions());

        boolean isNewDependency = addArtifact(artifactRule, model.toString());
        if (isNewDependency) {
          ModelSource depModelSource = modelResolver.resolveModel(
              dependency.getGroupId(), dependency.getArtifactId(), dependency.getVersion());
          if (depModelSource != null) {
            artifactRule.setRepository(depModelSource.getLocation());
            artifactRule.setSha1(downloadSha1(artifactRule, logger));
            resolveEffectiveModel(depModelSource, localDepExclusions, artifactRule);
          } else {
            logger.warning("Could not get a model for " + dependency);
          }
        }

        if (parent != null) {
          parent.addDependency(artifactRule);
          parent.getDependencies().addAll(artifactRule.getDependencies());
        } else {
          addArtifact(artifactRule, modelSource.getLocation());
        }
      } catch (UnresolvableModelException | InvalidArtifactCoordinateException e) {
        logger.warning("Could not resolve dependency " + dependency.getGroupId()
            + ":" + dependency.getArtifactId() + ":" + dependency.getVersion() + ": "
            + e.getMessage());
      }
    }
  }

  /**
   * Find the POM files for a given pom's parent(s) and submodules.
   */
  private void resolveSourceLocations(FileModelSource fileModelSource) {
    Model model = modelResolver.getRawModel(fileModelSource);
    if (model == null) {
      return;
    }

    // Self.
    Parent parent = model.getParent();
    if (model.getGroupId() == null) {
      model.setGroupId(parent.getGroupId());
    }
    if (!modelResolver.putModelSource(
        model.getGroupId(), model.getArtifactId(), fileModelSource)) {
      return;
    }

    // Parent.
    File pomDirectory = new File(fileModelSource.getLocation()).getParentFile();
    if (parent != null && !parent.getArtifactId().equals(model.getArtifactId())) {
      File parentPom;
      try {
        parentPom = new File(pomDirectory, parent.getRelativePath()).getCanonicalFile();
      } catch (IOException e) {
        logger.warning("Unable to get canonical path of " + pomDirectory + " and "
            + parent.getRelativePath());
        return;
      }
      if (parentPom.exists()) {
        resolveSourceLocations(new FileModelSource(parentPom));
      }
    }
    // Submodules.
    for (String module : model.getModules()) {
      resolveSourceLocations(new FileModelSource(new File(pomDirectory, module + "/pom.xml")));
    }
  }

  static Artifact getArtifact(String artifactCoords)
      throws InvalidArtifactCoordinateException {
    try {
      return new DefaultArtifact(artifactCoords);
    } catch (IllegalArgumentException e) {
      throw new InvalidArtifactCoordinateException(e.getMessage());
    }
  }

  private static Artifact getArtifact(Dependency dependency)
      throws InvalidArtifactCoordinateException {
    return getArtifact(dependency.getGroupId() + ":" + dependency.getArtifactId() + ":"
        + resolveVersion(
        dependency.getGroupId(), dependency.getArtifactId(), dependency.getVersion()));
  }

  /**
   * Adds the artifact to the map of deps, if it is not already there. Returns if the artifact
   * was newly added. If the artifact was in the list at a different version, adds an comment
   * about the desired version.
   */
  private boolean addArtifact(Rule dependency, String parent) {
    String artifactName = dependency.name();
    if (deps.containsKey(artifactName)) {
      Rule existingDependency = deps.get(artifactName);
      // Check that the versions are the same.
      if (!existingDependency.version().equals(dependency.version())) {
        existingDependency.addParent(parent + " wanted version " + dependency.version());
      } else {
        existingDependency.addParent(parent);
      }
      return false;
    }
    deps.put(artifactName, dependency);
    dependency.addParent(parent);
    return true;
  }

  /**
   * Exception thrown if an artifact coordinate could not be parsed.
   */
  public static class InvalidArtifactCoordinateException extends Exception {
    InvalidArtifactCoordinateException(String message) {
      super(message);
    }
  }
}
