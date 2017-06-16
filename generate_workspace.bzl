# To use, add the following lines to your WORKSPACE file:
#
#	load('//:generate_workspace.bzl', 'generated_maven_jars')
#	generated_maven_jars()
#
# To use the java_library targets this generates, add the following lines to a  BUILD file:
#
#	load('//:generate_workspace.bzl', 'generated_java_libraries')
#	generated_java_libraries()
#
# For either, make sure that there is a BUILD file in your top-level directory, so that //:generate_workspace.bzl resolves correctly.


# The following dependencies were calculated from:
# com.google.code.findbugs:jsr305:3.0.1
# org.codehaus.plexus:plexus-utils:jar:3.0.24
# org.codehaus.plexus:plexus-component-annotations:1.7.1
# org.codehaus.plexus:plexus-interpolation:1.24
# com.google.guava:guava:20.0
# org.apache.maven:maven-artifact:3.5.0
# org.mockito:mockito-all:1.9.5
# junit:junit:4.4
# com.google.truth:truth:0.30
# org.apache.maven:maven-settings-builder:3.5.0


def generated_maven_jars():
  native.maven_jar(
      name = "com_google_code_findbugs_jsr305",
      artifact = "com.google.code.findbugs:jsr305:3.0.1",
  )


  # org.apache.maven:maven-builder-support:jar:3.5.0
  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.4 wanted version 1.5.5
  # org.apache.maven:maven-artifact:jar:3.5.0
  # org.apache.maven:maven-settings:jar:3.5.0
  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_utils",
      artifact = "org.codehaus.plexus:plexus-utils:3.0.24",
  )


  native.maven_jar(
      name = "org_apache_maven_maven_settings_builder",
      artifact = "org.apache.maven:maven-settings-builder:3.5.0",
  )


  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_apache_maven_maven_builder_support",
      artifact = "org.apache.maven:maven-builder-support:3.5.0",
      sha1 = "9e2c5cfea0b1dd4868633ac0c0a496771219ec82",
  )


  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_apache_maven_maven_settings",
      artifact = "org.apache.maven:maven-settings:3.5.0",
      sha1 = "3bee97b7653f28c3f620b1310714ee0a1d566e63",
  )


  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.4
  native.maven_jar(
      name = "org_sonatype_plexus_plexus_cipher",
      artifact = "org.sonatype.plexus:plexus-cipher:1.4",
      sha1 = "50ade46f23bb38cd984b4ec560c46223432aac38",
  )


  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_sonatype_plexus_plexus_sec_dispatcher",
      artifact = "org.sonatype.plexus:plexus-sec-dispatcher:1.4",
      sha1 = "43fde524e9b94c883727a9fddb8669181b890ea7",
  )


  native.maven_jar(
      name = "org_mockito_mockito_all",
      artifact = "org.mockito:mockito-all:1.9.5",
  )


  native.maven_jar(
      name = "org_apache_maven_maven_artifact",
      artifact = "org.apache.maven:maven-artifact:3.5.0",
  )


  native.maven_jar(
      name = "com_google_truth_truth",
      artifact = "com.google.truth:truth:0.30",
  )


  # org.apache.maven:maven-builder-support:jar:3.5.0
  # org.apache.maven:maven-artifact:jar:3.5.0
  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_apache_commons_commons_lang3",
      artifact = "org.apache.commons:commons-lang3:3.5",
      sha1 = "6c6c702c89bfff3cd9e80b04d668c5e190d588c6",
  )


  # com.google.truth:truth:jar:0.30
  native.maven_jar(
      name = "com_google_errorprone_error_prone_annotations",
      artifact = "com.google.errorprone:error_prone_annotations:2.0.8",
      sha1 = "54e2d56cb157df08cbf183149bcf50c9f5151ed4",
  )


  # com.google.truth:truth:jar:0.30 wanted version 19.0
  native.maven_jar(
      name = "com_google_guava_guava",
      artifact = "com.google.guava:guava:20.0",
  )


  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_interpolation",
      artifact = "org.codehaus.plexus:plexus-interpolation:1.24",
  )


  # com.google.truth:truth:jar:0.30 wanted version 4.10
  native.maven_jar(
      name = "junit_junit",
      artifact = "junit:junit:4.4",
  )


  # org.apache.maven:maven-settings-builder:jar:3.5.0
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_component_annotations",
      artifact = "org.codehaus.plexus:plexus-component-annotations:1.7.1",
  )




def generated_java_libraries():
  native.java_library(
      name = "com_google_code_findbugs_jsr305",
      visibility = ["//visibility:public"],
      exports = [
          "@com_google_code_findbugs_jsr305//jar",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_utils",
      visibility = ["//visibility:public"],
      exports = [
          "@org_codehaus_plexus_plexus_utils//jar",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_settings_builder",
      visibility = ["//visibility:public"],
      exports = [
          "@org_apache_maven_maven_settings_builder//jar",
          "@org_apache_commons_commons_lang3//jar",
          "@org_apache_maven_maven_builder_support//jar",
          "@org_apache_maven_maven_settings//jar",
          "@org_codehaus_plexus_plexus_component_annotations//jar",
          "@org_codehaus_plexus_plexus_interpolation//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_sonatype_plexus_plexus_cipher//jar",
          "@org_sonatype_plexus_plexus_sec_dispatcher//jar",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_builder_support",
      visibility = ["//visibility:public"],
      exports = [
          "@org_apache_maven_maven_builder_support//jar",
          "@org_apache_commons_commons_lang3//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_settings",
      visibility = ["//visibility:public"],
      exports = [
          "@org_apache_maven_maven_settings//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
      ],
  )


  native.java_library(
      name = "org_sonatype_plexus_plexus_cipher",
      visibility = ["//visibility:public"],
      exports = [
          "@org_sonatype_plexus_plexus_cipher//jar",
      ],
  )


  native.java_library(
      name = "org_sonatype_plexus_plexus_sec_dispatcher",
      visibility = ["//visibility:public"],
      exports = [
          "@org_sonatype_plexus_plexus_sec_dispatcher//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
          "@org_sonatype_plexus_plexus_cipher//jar",
      ],
  )


  native.java_library(
      name = "org_mockito_mockito_all",
      visibility = ["//visibility:public"],
      exports = [
          "@org_mockito_mockito_all//jar",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_artifact",
      visibility = ["//visibility:public"],
      exports = [
          "@org_apache_maven_maven_artifact//jar",
          "@org_apache_commons_commons_lang3//jar",
          "@org_codehaus_plexus_plexus_utils//jar",
      ],
  )


  native.java_library(
      name = "com_google_truth_truth",
      visibility = ["//visibility:public"],
      exports = [
          "@com_google_truth_truth//jar",
          "@com_google_errorprone_error_prone_annotations//jar",
          "@com_google_guava_guava//jar",
          "@junit_junit//jar",
      ],
  )


  native.java_library(
      name = "org_apache_commons_commons_lang3",
      visibility = ["//visibility:public"],
      exports = [
          "@org_apache_commons_commons_lang3//jar",
      ],
  )


  native.java_library(
      name = "com_google_errorprone_error_prone_annotations",
      visibility = ["//visibility:public"],
      exports = [
          "@com_google_errorprone_error_prone_annotations//jar",
      ],
  )


  native.java_library(
      name = "com_google_guava_guava",
      visibility = ["//visibility:public"],
      exports = [
          "@com_google_guava_guava//jar",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_interpolation",
      visibility = ["//visibility:public"],
      exports = [
          "@org_codehaus_plexus_plexus_interpolation//jar",
      ],
  )


  native.java_library(
      name = "junit_junit",
      visibility = ["//visibility:public"],
      exports = [
          "@junit_junit//jar",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_component_annotations",
      visibility = ["//visibility:public"],
      exports = [
          "@org_codehaus_plexus_plexus_component_annotations//jar",
      ],
  )


