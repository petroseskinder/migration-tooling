package com.google.devtools.build.workspace.maven;

import org.apache.maven.artifact.versioning.DefaultArtifactVersion;
import org.apache.maven.artifact.versioning.InvalidVersionSpecificationException;
import org.apache.maven.artifact.versioning.VersionRange;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

import static com.google.devtools.build.workspace.maven.Rule.MAVEN_CENTRAL_URL;
import static java.util.stream.Collectors.toList;
import static org.apache.maven.artifact.versioning.VersionRange.createFromVersionSpec;


class VersionResolver {

  /**
   * Takes a version specification (as defined in
   * http://maven.apache.org/enforcer/enforcer-rules/versionRanges.html) and finds a valid version
   * that is likely to exist.  Basically: 1.2.3 is 1.2.3+, [1.2.3] is exactly 1.2.3, and then
   * there is comma-separated range notation.
   */
  static String resolveVersion(String groupId, String artifactId, String unparsedVersion)
      throws Resolver.InvalidArtifactCoordinateException {

    VersionRange versionRange;
    try {
      versionRange = createFromVersionSpec(unparsedVersion);
    } catch (InvalidVersionSpecificationException e) {
      throw new Resolver.InvalidArtifactCoordinateException("Invalid version: " + e.getLocalizedMessage()
          + " for " + groupId + ":" + artifactId + ":" + unparsedVersion);
    }

    //TODO(petros): choosing the recommended version directly contradicts the highest version
    List<String> validVersions;
    try {
      validVersions = fetchVersions(groupId, artifactId, unparsedVersion);
    } catch (IOException e) {
      throw new Resolver.InvalidArtifactCoordinateException("Invalid version: " + e.getLocalizedMessage()
          + " for " + groupId + ":" + artifactId + ":" + unparsedVersion);
    }
    // Heuristic
    return validVersions.get(validVersions.size()-1);
  }

  // TODO allow for other URL's
  static List<String> fetchVersions(String groupId, String artifactId, String unparsedVersion)
      throws IOException {

    // HTML links are defined with the <a> tag. The link address is specified in the href attribute:
//    System.out.println(MAVEN_CENTRAL_URL + groupId.replace('.', '/') + "/" + artifactId + "/"+unparsedVersion);
    Document doc = Jsoup.connect(MAVEN_CENTRAL_URL + groupId.replace('.', '/') + "/" + artifactId + "/").data().timeout(3000).get();
    Elements links = doc.body().select("a[href]");
    List<String> list = links.stream()
                        .map(Element::text)
                        .filter(VersionResolver::isValidVersion)
                        .filter(s -> isContainedVersion(unparsedVersion, s))
                        .map(s -> s.split("/")[0]) // TODO make this less ugly. filter out forward slash
                        .sorted() // This is broken 2.0.2 takes precedence over 2.0.11
                        .collect(toList());
//    System.out.println(list);
    return list;
  }

  /**
   * Check if the version is contained in the provided range
   * TODO remove the catching of the exception.
   * TODO test this
   */
  private static boolean isContainedVersion(String unparsedVersion, String version) {
    VersionRange range;
    try {
      // Transform this so you can do version x+
      String versionRange = (unparsedVersion.contains("[") || unparsedVersion.contains("(")) ? unparsedVersion :
          "["+unparsedVersion+","+")";
      range = createFromVersionSpec(versionRange);
    } catch (InvalidVersionSpecificationException e) {
      return false;
    }
    return range.containsVersion(new DefaultArtifactVersion(version.substring(0, version.length()-1)));
  }


  /**
   * You are allowed to submit a version that is.
   * This should filter any SNAPSHOT versions.
   * TODO(petros) TEST this
   */
  private static boolean isValidVersion(String version) {
    Pattern pattern = Pattern.compile("\\d+(\\.\\d+)*(\\.\\d+)*/");
    return pattern.matcher(version).matches();
  }
}
