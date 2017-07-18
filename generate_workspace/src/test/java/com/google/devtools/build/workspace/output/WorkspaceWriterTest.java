// Copyright 2016 The Bazel Authors. All rights reserved.
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

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.devtools.build.workspace.maven.MavenJarRule;
import com.google.devtools.build.workspace.maven.Rule;

import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.graph.DefaultDependencyNode;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.Set;

/**
 * Tests for @{link WorkspaceWriter}.
 */
@RunWith(JUnit4.class)
public class WorkspaceWriterTest {

  public String getWorkspaceFileContent(Set<MavenJarRule> rules) throws Exception {
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    PrintStream ps = new PrintStream(baos);
    WorkspaceWriter writer = new WorkspaceWriter(new String[]{}, System.getenv("TEST_TMPDIR"));
    writer.writeWorkspace(ps, rules);
    return baos.toString(String.valueOf(Charset.defaultCharset()));
  }

  public String getBuildFileContent(Set<MavenJarRule> rules) throws Exception {
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    PrintStream ps = new PrintStream(baos);
    WorkspaceWriter writer = new WorkspaceWriter(new String[]{}, System.getenv("TEST_TMPDIR"));
    writer.writeBuild(ps, rules);
    return baos.toString(String.valueOf(Charset.defaultCharset()));
  }

  @Test
  public void testHeaders() throws Exception {
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    PrintStream ps = new PrintStream(baos);
    WorkspaceWriter writer = new WorkspaceWriter(
        new String[]{"--artifact=x:y:1.2.3", "--artifact=a:b:3.2.1"},
        System.getenv("TEST_TMPDIR"));
    writer.writeWorkspace(ps, Sets.newHashSet());
    assertThat(baos.toString(String.valueOf(Charset.defaultCharset()))).contains(
        "# generate_workspace --artifact=x:y:1.2.3 --artifact=a:b:3.2.1");
  }

  @Test
  public void testArtifacts() throws Exception {
    Set<MavenJarRule> rules = ImmutableSet.of(createRule("x:y:1.2.3"));
    String content = getWorkspaceFileContent(rules);
    assertThat(content).contains("maven_jar(\n"
        + MAJOR_INDENT + "name = \"x_y\",\n"
        + MAJOR_INDENT + "artifact = \"x:y:1.2.3\",\n"
        + ")"
    );
  }

  @Test
  public void testParents() throws Exception {
    MavenJarRule rule = createRule("x:y:1.2.3");
    rule.addParent("some parent");
    Set<MavenJarRule> rules = ImmutableSet.of(rule);
    String content = getWorkspaceFileContent(rules);
    assertThat(content).contains("# some parent\n"
            + "maven_jar(\n"
            + MAJOR_INDENT + "name = \"x_y\",\n"
            + MAJOR_INDENT + "artifact = \"x:y:1.2.3\",\n"
            + ")"
    );
  }

  @Test
  public void testBuildFile() throws Exception {
    MavenJarRule rule = createRule("x:y:1.2.3");
    MavenJarRule dep1 = createRule("dep:dep1:4.5.6");
    rule.addDependency(dep1);
    MavenJarRule dep2 = createRule("dep:dep2:7.8.9");
    rule.addDependency(dep2);
    Set<MavenJarRule> rules = ImmutableSet.of(rule, dep1, dep2);
    String content = getBuildFileContent(rules);
    assertThat(content).contains("\njava_library(\n"
            + MAJOR_INDENT + "name = \"x_y\",\n"
            + MAJOR_INDENT + "visibility = [\"//visibility:public\"],\n"
            + MAJOR_INDENT + "exports = [\"@x_y//jar\"],\n"
            + MAJOR_INDENT + "runtime_deps = [\n"
            + MAJOR_INDENT + MAJOR_INDENT + "\":dep_dep2\",\n"
            + MAJOR_INDENT + MAJOR_INDENT + "\":dep_dep1\",\n"
            + MAJOR_INDENT + "],\n"
            + ")"
    );
  }

  private MavenJarRule createRule(String mavenCoordinate) {
    return new MavenJarRule(
        new DefaultDependencyNode(new DefaultArtifact(mavenCoordinate)));
  }
}
