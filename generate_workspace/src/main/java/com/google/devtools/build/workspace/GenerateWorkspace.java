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

package com.google.devtools.build.workspace;

import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.devtools.build.workspace.maven.Aether;
import com.google.devtools.build.workspace.maven.ArtifactResolver;
import com.google.devtools.build.workspace.maven.DefaultModelResolver;
import com.google.devtools.build.workspace.maven.GraphSerializer;
import com.google.devtools.build.workspace.maven.MavenJarRule;
import com.google.devtools.build.workspace.maven.Resolver;
import com.google.devtools.build.workspace.maven.Rule;
import com.google.devtools.build.workspace.output.AbstractWriter;
import java.nio.file.Paths;
import java.util.List;
import java.util.Set;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.graph.DependencyNode;

/**
 * Generates a WORKSPACE file for Bazel from other types of dependency trackers.
 */
class GenerateWorkspace {

  private final ArtifactResolver artifactResolver;
  private final Resolver resolver;
  private final Set<MavenJarRule> rulesFromArtifacts = Sets.newHashSet();
  private final Set<Rule> rulesFromPomFiles = Sets.newHashSet();
  private final List<Dependency> managedDependencies = Lists.newArrayList();

  GenerateWorkspace(List<Rule> aliases) {
    this.artifactResolver = new ArtifactResolver(Aether.defaultOption(), managedDependencies);
    this.resolver = new Resolver(new DefaultModelResolver(), aliases);
  }

  void generateFromPom(List<String> projects) {
    for (String project : projects) {
      resolver.resolvePomDependencies(getAbsolute(project));
    }
    rulesFromPomFiles.addAll(resolver.getRules());
  }

  void generateFromArtifacts(List<String> artifacts) {
    DependencyNode root = artifactResolver.resolveArtifacts(artifacts);
    rulesFromArtifacts.addAll(GraphSerializer.generateBuildRules(root));
  }

  private String getAbsolute(String path) {
    return Paths.get(System.getProperty("user.dir")).resolve(path).toString();
  }

  void writeResults(AbstractWriter resultWriter) {
    resultWriter.write(resolver.getRules());
  }

}
