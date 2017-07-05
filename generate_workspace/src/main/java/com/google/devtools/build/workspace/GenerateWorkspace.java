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

import com.beust.jcommander.JCommander;
import com.beust.jcommander.ParameterException;
import com.google.common.collect.Lists;
import com.google.devtools.build.workspace.maven.ArtifactResolver;
import com.google.devtools.build.workspace.maven.GraphSerializer;
import com.google.devtools.build.workspace.maven.MavenJarRule;
import com.google.devtools.build.workspace.maven.PomFileParser;
import com.google.devtools.build.workspace.output.AbstractWriter;
import com.google.devtools.build.workspace.output.BzlWriter;
import com.google.devtools.build.workspace.output.WorkspaceWriter;
import org.eclipse.aether.graph.DependencyNode;

import java.io.IOException;
import java.lang.invoke.MethodHandles;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

/**
 * Generates a WORKSPACE file for Bazel from other types of dependency trackers.
 */
public class GenerateWorkspace {

  private final static Logger logger = Logger.getLogger(
      MethodHandles.lookup().lookupClass().getName());

  public static void main(String[] args) throws InterruptedException {
    GenerateWorkspaceOptions options = new GenerateWorkspaceOptions();
    JCommander optionParser = JCommander.newBuilder().addObject(options).build();
    try {
      optionParser.parse(args);
    } catch (ParameterException e) {
      System.out.println("Unable to parse options: " + e.getLocalizedMessage());
      optionParser.usage();
      return;
    }

    if (options.mavenProjects.isEmpty() && options.artifacts.isEmpty()) {
      optionParser.usage();
      return;
    }

    try {
      List<String> artifacts = getArtifacts(options.mavenProjects, options.artifacts);
      ArtifactResolver artifactResolver = new ArtifactResolver();
      DependencyNode root = artifactResolver.resolveArtifacts(artifacts);
      Set<MavenJarRule> buildRules = GraphSerializer.generateBuildRules(root);
      AbstractWriter resultWriter = getResultWriter(args, options.outputDir, options.directToWorkspace);
      resultWriter.write(buildRules);

    } catch (IOException e) {
      logger.severe(e.getMessage());
      System.exit(1);
    }
  }

  private static AbstractWriter getResultWriter(
      String[] args, String outputDirStr, boolean directToWorkspace) throws IOException {
    return directToWorkspace ? new WorkspaceWriter(args, outputDirStr) : new BzlWriter(args, outputDirStr);
  }

  private static List<String> getArtifacts(List<String> projects, List<String> mavenCoordinates) {
    List<String> artifacts = Lists.newArrayList();
    PomFileParser parser = new PomFileParser();
    artifacts.addAll(parser.parsePomFiles(projects));
    artifacts.addAll(mavenCoordinates);
    return artifacts;
  }

}
