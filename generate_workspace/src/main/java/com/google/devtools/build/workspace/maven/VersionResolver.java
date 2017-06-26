package com.google.devtools.build.workspace.maven;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableList;
import org.eclipse.aether.RepositorySystem;
import org.eclipse.aether.RepositorySystemSession;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.resolution.VersionRangeRequest;
import org.eclipse.aether.resolution.VersionRangeResolutionException;
import org.eclipse.aether.resolution.VersionRangeResult;

import java.util.List;

import static com.google.devtools.build.workspace.maven.AetherUtils.*;

public class VersionResolver {

  private final RepositorySystem repositorySystem;

  private final RepositorySystemSession systemSession;

  private final List<RemoteRepository> remoteRepositories;


  VersionResolver() {
    this.repositorySystem = newRepositorySystem();
    this.systemSession = newRepositorySession(this.repositorySystem);

    this.remoteRepositories = ImmutableList.of(newCentralRepository());
  }

  // TODO(petros): Add support for non-maven central remote repository systems.
  @VisibleForTesting
  VersionResolver(
      RepositorySystem repositorySystem, RepositorySystemSession session, List<RemoteRepository> remoteRepositories) {
    this.repositorySystem = repositorySystem;
    this.systemSession = session;
    this.remoteRepositories = remoteRepositories;
  }

  /**
   * Takes a version specification (as defined in
   * http://maven.apache.org/enforcer/enforcer-rules/versionRanges.html) and scrapes the maven
   * remote repository for the highest available version that is accepted by the provided version
   * specification. For example, 1.2.3 should be interpreted as 1.2.3+. If the available versions are
   * {1.2.1, 1.2.3, and 1.2.4}, then this will return 1.2.4.
   */
  String resolveVersion(String groupId, String artifactId, String versionSpec)
      throws Resolver.InvalidArtifactCoordinateException {

    String artifactString = String.format("%s:%s:%s", groupId, artifactId, versionSpec);
    Artifact artifact = new DefaultArtifact(artifactString);

    VersionRangeRequest rangeRequest = new VersionRangeRequest(artifact, remoteRepositories, null);

    try {

      final VersionRangeResult versionRangeResult =
          repositorySystem.resolveVersionRange(systemSession, rangeRequest);

      if (versionRangeResult.getHighestVersion() == null) {
        throw new Resolver.InvalidArtifactCoordinateException("No versions matched " + artifactString);
      }
      return versionRangeResult.getHighestVersion().toString();

    } catch (VersionRangeResolutionException e) {
      throw new Resolver.InvalidArtifactCoordinateException(
          messageForInvalidArtifact(groupId, artifactId, versionSpec));
    }
  }

  private static String messageForInvalidArtifact(String groupId, String artifactId, String versionSpec) {
    return "Unable to find versions for " + groupId + ":" + artifactId + ":" + versionSpec;
  }
}


