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

import static com.google.common.truth.Truth.assertThat;
import static com.google.devtools.build.workspace.output.AbstractWriter.MAJOR_INDENT;
import static com.google.devtools.build.workspace.output.AbstractWriter.MINOR_INDENT;

import com.google.common.collect.ImmutableList;
import com.google.common.io.Files;
import com.google.devtools.build.workspace.maven.MavenJarRule;

import java.io.File;
import java.nio.charset.Charset;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.graph.DefaultDependencyNode;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

/**
 * Test the .bzl output writer.
 */
//TODO(petros): add tests for aliases.
@RunWith(JUnit4.class)
public class BzlWriterTest {

  @Test
  public void writeEmpty() throws Exception {
    BzlWriter writer = new BzlWriter(new String[]{}, System.getenv("TEST_TMPDIR"));
    writer.write(ImmutableList.of());
    String fileContents = Files.toString(
        new File(System.getenv("TEST_TMPDIR") + "/generate_workspace.bzl"),
        Charset.defaultCharset());
    assertThat(fileContents).contains("def generated_maven_jars():\n  pass\n");
    assertThat(fileContents).contains("def generated_java_libraries():\n  pass\n");
  }

  @Test
  public void writeRules() throws Exception {
    BzlWriter writer = new BzlWriter(new String[]{}, System.getenv("TEST_TMPDIR"));
    writer.write(ImmutableList.of(createRule("x:y:1.2.3")));
    String fileContents = Files.toString(
        new File(System.getenv("TEST_TMPDIR") + "/generate_workspace.bzl"),
        Charset.defaultCharset());

    assertThat(fileContents).contains("def generated_maven_jars():\n"
        + MINOR_INDENT + "native.maven_jar(\n"
        + MINOR_INDENT + MAJOR_INDENT + "name = \"x_y\",\n"
        + MINOR_INDENT + MAJOR_INDENT + "artifact = \"x:y:1.2.3\",\n"
        + MINOR_INDENT + ")\n");

    assertThat(fileContents).contains("def generated_java_libraries():\n"
        + MINOR_INDENT + "native.java_library(\n"
        + MINOR_INDENT + MAJOR_INDENT + "name = \"x_y\",\n"
        + MINOR_INDENT + MAJOR_INDENT + "visibility = [\"//visibility:public\"],\n"
        + MINOR_INDENT + MAJOR_INDENT + "exports = [\"@x_y//jar\"],\n"
        + MINOR_INDENT + ")\n");
  }
  
  public void writeCommand() throws Exception {
    BzlWriter writer = new BzlWriter(new String[]{"x", "y", "z"}, System.getenv("TEST_TMPDIR"));
    writer.write(ImmutableList.of());
    String fileContents = Files.toString(
        new File(System.getenv("TEST_TMPDIR") + "/generate_workspace.bzl"),
        Charset.defaultCharset());
    assertThat(fileContents).contains("# generate_workspace x y z");
  }

  private MavenJarRule createRule(String mavenCoordinate) {
    return new MavenJarRule(
        new DefaultDependencyNode(new DefaultArtifact(mavenCoordinate)));
  }
}
