package com.google.devtools.build.workspace.maven;

import com.beust.jcommander.internal.Sets;
import com.google.common.collect.ImmutableSet;
import org.apache.maven.model.Dependency;
import org.apache.maven.model.Model;
import org.apache.maven.model.building.DefaultModelProcessor;
import org.apache.maven.model.building.FileModelSource;
import org.apache.maven.model.io.DefaultModelReader;
import org.apache.maven.model.locator.DefaultModelLocator;

import java.io.File;
import java.nio.file.Paths;
import java.util.List;
import java.util.Set;

import static java.util.stream.Collectors.toSet;

/**
 * Parses POM files for all explicitly declared dependencies.
 */
//TODO(petros): Add support for finding all parent, sibling, and child POM files.
//TODO(petros): Add support for managed dependencies support and exclusions
public class PomFileParser {

  private DefaultModelResolver modelResolver;

  public PomFileParser() {
    this.modelResolver = new DefaultModelResolver();
  }

  public Set<String> parsePomFiles(List<String> projectPaths) {
    Set<String> mavenCoordinates = Sets.newHashSet();
    projectPaths.stream().map(this::parsePomFile).forEach(mavenCoordinates::addAll);
    return mavenCoordinates;
  }

  private Set<String> parsePomFile(String projectPath) {
    FileModelSource pomSource = getFileModelSource(projectPath);
    Model model = modelResolver.getEffectiveModel(pomSource);
    if (model == null) {
      return ImmutableSet.of();
    }
    return model.getDependencies().stream().map(this::mavenCoordinate).collect(toSet());
  }

  /** Obtains the file model source for a given pom file path. */
  private FileModelSource getFileModelSource(String projectPath) {
    String absolutePath = getAbsolute(projectPath);

    DefaultModelProcessor processor = new DefaultModelProcessor();
    processor.setModelLocator(new DefaultModelLocator());
    processor.setModelReader(new DefaultModelReader());
    File pom = processor.locatePom(new File(absolutePath));

    return new FileModelSource(pom);
  }

  private String mavenCoordinate(Dependency dep) {
    return String.format("%s:%s:%s", dep.getGroupId(), dep.getArtifactId(), dep.getVersion());
  }

  private String getAbsolute(String path) {
    return Paths.get(System.getProperty("user.dir")).resolve(path).toString();
  }

}
