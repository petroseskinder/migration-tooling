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
import com.google.devtools.build.workspace.maven.DefaultModelResolver;
import com.google.devtools.build.workspace.maven.Resolver;
import com.google.devtools.build.workspace.maven.Rule;
import com.google.devtools.build.workspace.output.AbstractWriter;
import java.nio.file.Paths;
import java.util.List;

/**
 * Generates a WORKSPACE file for Bazel from other types of dependency trackers.
 */
class GenerateWorkspace {

  private final Resolver resolver;
  private final List<String> inputs;

  GenerateWorkspace(List<Rule> aliases) {
    this.resolver = new Resolver(new DefaultModelResolver(), aliases);
    this.inputs = Lists.newArrayList();
  }

  void generateFromPom(List<String> projects) {
    for (String project : projects) {
      String pomFile = resolver.resolvePomDependencies(getAbsolute(project));
      if (pomFile != null) {
        inputs.add(pomFile);
      }
    }
  }

  void generateFromArtifacts(List<String> artifacts) {
    for (String artifactCoord : artifacts) {
      inputs.add(artifactCoord);
      resolver.resolveArtifact(artifactCoord);
    }
  }

  private String getAbsolute(String path) {
    return Paths.get(System.getProperty("user.dir")).resolve(path).toString();
  }

  void writeResults(AbstractWriter resultWriter) {
    resultWriter.write(resolver.getRules());
  }

}
