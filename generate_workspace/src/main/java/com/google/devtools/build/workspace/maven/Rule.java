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

import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import java.lang.invoke.MethodHandles;
import java.util.Set;
import java.util.logging.Logger;
import org.eclipse.aether.artifact.Artifact;

/**
 * A struct representing the fields of maven_jar to be written to the WORKSPACE file.
 */
public final class Rule extends AbstractRule {
  private final static Logger logger = Logger.getLogger(
      MethodHandles.lookup().lookupClass().getName());

  private final Set<Rule> dependentRules;

  static final String MAVEN_CENTRAL_URL = "https://repo1.maven.org/maven2/";

  private String repository;

  public Rule(Artifact artifact) {
    this(artifact, null);
  }

  public Rule(Artifact artifact, String alias) {
    super(artifact, alias);
    this.repository = MAVEN_CENTRAL_URL;
    this.dependentRules = Sets.newTreeSet();
  }

  /** Convenience method to add a dependency from a rule class. */
  public void addDependency(Rule dependency) {
    addDependency(dependency.name());
    dependentRules.add(dependency);
  }

  public Set<Rule> getDependentRules() {
    return dependentRules;
  }

  @Override
  public boolean hasCustomRepository() {
    return !MAVEN_CENTRAL_URL.equals(repository);
  }

  @Override
  public String getRepository() {
    return repository;
  }

  public void setRepository(String url) {
    // url is of the form repository/group/artifact/version/artifact-version.pom. Strip off
    // everything after repository/.
    int uriStart = url.indexOf(getUri());
    if (uriStart == -1) {
      // If url is actually a path to a file, it won't match the URL pattern described above.
      // However, in that case we also have no way of fetching the artifact, so we'll print a
      // warning.
      logger.warning(name() + " was defined in " + url
          + " which isn't a repository URL, so we couldn't figure out how to fetch "
          + toMavenArtifactString() + " in a general way. You will need to set the \"repository\""
          + " attribute manually");
    } else {
      this.repository = url.substring(0, uriStart);
    }
  }

  /**
   * @return The artifact's URL.
   */
  public String getUrl() {
    Preconditions.checkState(repository.endsWith("/"));
    return repository + getUri();
  }

  private String getUri() {
    return groupId().replaceAll("\\.", "/") + "/" + artifactId() + "/" + version() + "/"
        + artifactId() + "-" + version() + ".pom";
  }

}
