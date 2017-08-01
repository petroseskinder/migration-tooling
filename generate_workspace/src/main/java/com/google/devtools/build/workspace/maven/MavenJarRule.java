// Copyright 2017 The Bazel Authors. All rights reserved.
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

import static java.util.stream.Collectors.toList;

import com.beust.jcommander.internal.Nullable;
import com.google.common.base.Joiner;
import com.google.common.collect.Sets;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.graph.DependencyNode;
import org.eclipse.aether.repository.RemoteRepository;

abstract class AbstractRule implements Comparable<AbstractRule> {

  protected final Artifact artifact;

  @Nullable
  protected final String alias;

  protected final Set<String> parents;

  protected final Set<String> dependencies;

  protected final Set<String> exclusions;

  protected String version;

  protected String sha1;

  public AbstractRule(Artifact artifact, String alias) {
    this.artifact = artifact;
    this.version = artifact.getVersion();
    this.parents = Sets.newHashSet();
    this.dependencies = Sets.newTreeSet();
    this.exclusions = Sets.newHashSet();
    this.alias = alias;
  }

  /**
   * A unique name for this artifact to use in maven_jar's name attribute.
   */
  public String name() {
    return AbstractRule.name(groupId(), artifactId());
  }

  /**
   * A unique name for this artifact to use in maven_jar's name attribute.
   */
  public static String name(String groupId, String artifactId) {
    return groupId.replaceAll("[.-]", "_") + "_" + artifactId.replaceAll("[.-]", "_");
  }

  /** Artifact specific things */
  public Artifact getArtifact() {
    return artifact;
  }

  public String groupId() {
    return artifact.getGroupId();
  }

  public String artifactId() {
    return artifact.getArtifactId();
  }

  public String version() {
    return version;
  }

  public void setVersion(String version) {
    this.version = version;
  }

  public void addParent(String parent) {
    parents.add(parent);
  }

  public Set<String> getParents() {
    return parents;
  }

  public void addDependency(String dep) {
    dependencies.add(dep);
  }

  public Set<String> getDependencies() {
    return dependencies;
  }

  public String toMavenArtifactString() {
    return groupId() + ":" + artifactId() + ":" + version();
  }

  public boolean aliased() {
    return alias != null;
  }

  public abstract String getRepository();

  public abstract boolean hasCustomRepository();

  public void setSha1(String sha1) {
    this.sha1 = sha1;
  }

  public String getSha1() {
    return sha1;
  }

  @Override
  public int compareTo(AbstractRule o) {
    return 0;
  }

  @Override
  public int hashCode() {
    return Objects.hash(groupId(), artifactId());
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }

    AbstractRule rule = (AbstractRule) o;

    return Objects.equals(groupId(), rule.groupId())
        && Objects.equals(artifactId(), rule.artifactId());
  }

  @Override
  public String toString() {
    return artifact.toString();
  }
}


/**
 * A struct representing the fields of maven_jar to be written to the WORKSPACE file.
 */
//TODO(petros): Implement the SHA1 and aliasing.
public class MavenJarRule extends AbstractRule {

  private final DependencyNode node;

  public MavenJarRule(DependencyNode node) {
    super(node.getArtifact(), null);
    this.node = node;
  }

  public void addParent(MavenJarRule parent) {
    addParent(parent.toMavenArtifactString());
  }


  public void addDependency(MavenJarRule dependency) {
    addDependency(dependency.name());
  }

  /** Checks if the dependency node possesses a remote repository other than maven central */
  @Override
  public boolean hasCustomRepository() {
    List<RemoteRepository> repositories = node.getRepositories();
    if (repositories == null || repositories.isEmpty() || repositories.size() > 1) {
      return false;
    }
    return repositories.get(0).equals(Aether.Utilities.mavenCentralRepository());
  }

  @Override
  public String getRepository() {
    return Joiner.on(',').join(
        node.getRepositories().stream().map(RemoteRepository::getUrl).collect(toList()));
  }

  public String getSha1() {
    //TODO(petros) implement this
    return "";
  }
}
