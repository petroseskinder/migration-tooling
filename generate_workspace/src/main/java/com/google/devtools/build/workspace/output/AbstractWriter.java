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

package com.google.devtools.build.workspace.output;

import com.google.devtools.build.workspace.maven.MavenJarRule;

import java.io.PrintStream;
import java.util.Collection;
import java.util.Set;

/**
 * Basic implementation for output writers.
 */
public abstract class AbstractWriter {

  public static final String MINOR_INDENT = "  ";
  public static final String MAJOR_INDENT = "    ";
  public abstract void write(Collection<MavenJarRule> rules);

  /**
   * Writes the list of sources as a comment to outputStream.
   */
  void writeHeader(PrintStream outputStream, String[] argv) {
    outputStream.println("# The following dependencies were calculated from:");
    outputStream.println("#");
    outputStream.println("# generate_workspace " + String.join(" ", argv));
    outputStream.print("\n\n");
  }

  String formatMavenJar(MavenJarRule rule, String ruleName, String indent) {
    if (rule.aliased()) {
      // If the rule was aliased, then it is already declared somewhere else and we don't need to
      // declare it again.
      return "";
    }
    StringBuilder builder = new StringBuilder();
    for (String parent : rule.getParents()) {
      builder.append(indent).append("# ").append(parent).append("\n");
    }
    builder.append(indent).append(ruleName).append("(\n");
    builder.append(indent).append(MAJOR_INDENT).append("name = \"").append(rule.name()).append("\",\n");
    builder.append(indent).append(MAJOR_INDENT).append("artifact = \"").append(rule.toMavenArtifactString())
        .append("\",\n");
    if (rule.hasCustomRepository()) {
      System.out.println("HAS CUSTOM REPOSITORY" + rule.getRepository());
      builder.append(indent).append(MAJOR_INDENT).append("repository = \"").append(rule.getRepository())
          .append("\",\n");
    }
    if (rule.getSha1() != null) {
      builder.append(indent).append(MAJOR_INDENT).append("sha1 = \"").append(rule.getSha1()).append("\",\n");
    }
    builder.append(indent).append(")\n\n");
    return builder.toString();
  }

  /**
   * Write library rules to depend on the transitive closure of all of these rules.
   */
  String formatJavaLibrary(MavenJarRule rule, String ruleName, String indent) {
    StringBuilder builder = new StringBuilder();
    builder.append(indent).append(ruleName).append("(\n");
    builder.append(indent).append(MAJOR_INDENT).append("name = \"").append(rule.name()).append("\",\n");
    builder.append(indent).append(MAJOR_INDENT).append("visibility = [\"//visibility:public\"],\n");
    builder.append(indent).append(MAJOR_INDENT).append("exports = [\"@").append(rule.name()).append("//jar\"],\n");
    Set<String> dependencies = rule.getDependencies();
    if (!dependencies.isEmpty()) {
      builder.append(indent).append(MAJOR_INDENT).append("runtime_deps = [\n");
      for (String dep : rule.getDependencies()) {
        builder.append(indent).append(MAJOR_INDENT).append(MAJOR_INDENT).append("\":").append(dep).append("\",\n");
      }
      builder.append(indent).append(MAJOR_INDENT).append("],\n");
    }
    builder.append(indent).append(")\n\n");
    return builder.toString();
  }

}
