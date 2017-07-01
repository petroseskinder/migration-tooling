# The following dependencies were calculated from:
#
# generate_workspace --artifact=org.apache.maven:maven-aether-provider:3.3.9 --artifact=com.google.code.findbugs:jsr305:3.0.1 --artifact=org.codehaus.plexus:plexus-utils:jar:3.0.24 --artifact=org.codehaus.plexus:plexus-component-annotations:1.7.1 --artifact=org.codehaus.plexus:plexus-interpolation:1.24 --artifact=com.google.guava:guava:20.0 --artifact=org.apache.maven:maven-artifact:3.5.0 --artifact=org.mockito:mockito-all:1.9.5 --artifact=junit:junit:4.4 --artifact=com.google.truth:truth:0.30


def generated_maven_jars():
  # org.mortbay.jetty:jetty-util:jar:6.1.26 got requested version
  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "org_apache_maven_maven_plugin_tools_api",
      artifact = "org.apache.maven:maven-plugin-tools-api:2.0",
      sha1 = "e8e40be6c69e62361c81a4327fa9994621c62cf5",
  )


  # org.springframework:spring-context:jar:2.0.5
  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.springframework:spring-jmx:jar:2.0.5 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-guice:jar:2.9.4 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # com.google.inject:guice:jar:4.0 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "aopalliance_aopalliance",
      artifact = "aopalliance:aopalliance:1.0",
      sha1 = "0235ba8b489512805ac13a8f9ea77a1ca5ebe3e8",
  )


  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-transport-apr:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_filter_compression",
      artifact = "org.apache.mina:mina-filter-compression:2.0.5",
      sha1 = "d3346322b2aadec82ffecfce7a636017d442f9c9",
  )


  # javax.xml.ws:jaxws-api:jar:2.1 got requested version
  # javax.enterprise:cdi-api:jar:1.0 got requested version
  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_annotation_jsr250_api",
      artifact = "javax.annotation:jsr250-api:1.0",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "5025422767732a1ab45d93abfea846513d742dcf",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 got requested version
  native.maven_jar(
      name = "org_eclipse_aether_aether_connector_basic",
      artifact = "org.eclipse.aether:aether-connector-basic:1.0.2.v20150114",
      sha1 = "d55c03b16efc16f25e1fd9fe0f37878fddbeed68",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_file",
      artifact = "org.apache.maven.wagon:wagon-file:2.10",
      sha1 = "bfcc4c322190d6e3dd2fa9f191c0359d380d87c5",
  )


  # com.thoughtworks.qdox:qdox:jar:1.6.3 wanted version 1.5.1
  # org.mortbay.jetty:jetty-util:jar:6.1.26 wanted version 1.6.5
  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  # groovy:groovy:jar:1.0-jsr-03 got requested version
  # pmd:pmd:jar:4.3 wanted version 1.6
  # org.mortbay.jetty:jetty:jar:6.1.26 wanted version 1.6.5
  native.maven_jar(
      name = "ant_ant",
      artifact = "ant:ant:1.6.2",
      sha1 = "f43d0b2267d8ac1a86f0e16594d8766f62d8311c",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_repository_metadata",
      artifact = "org.apache.maven:maven-repository-metadata:3.3.9",
      sha1 = "6850232b35e504057d67bde11efddebf6271e1ce",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_sonatype_plexus_plexus_sec_dispatcher",
      artifact = "org.sonatype.plexus:plexus-sec-dispatcher:1.3",
      sha1 = "dedc02034fb8fcd7615d66593228cb71709134b4",
  )


  native.maven_jar(
      name = "com_google_truth_truth",
      artifact = "com.google.truth:truth:0.30",
  )


  # org.apache.httpcomponents:httpclient:jar:4.3.5
  native.maven_jar(
      name = "net_java_dev_jna_jna_platform",
      artifact = "net.java.dev.jna:jna-platform:4.0.0",
      sha1 = "deb6bf66918989b50209b8c9aaf3b2561af7f011",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "com_google_inject_guice",
      artifact = "com.google.inject:guice:4.0",
      sha1 = "0f990a43d3725781b6db7cd0acf0a8b62dfd1649",
  )


  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 wanted version 1.5.5
  # org.codehaus.plexus:plexus-interpolation:jar:1.21 wanted version 1.5.5
  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 1.6
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_component_annotations",
      artifact = "org.codehaus.plexus:plexus-component-annotations:1.7.1",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.sshd:sshd-core:jar:0.8.0 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.sshd:sshd-core:jar:0.8.0
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_core",
      artifact = "org.apache.mina:mina-core:2.0.5",
      sha1 = "0e134a3761833a3c28c79331e806f64f985a9eec",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_validation_validation_api",
      artifact = "javax.validation:validation-api:1.0.0.GA",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "b6bd7f9d78f6fdaa3c37dae18a4bd298915f328e",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_apache_felix_org_apache_felix_framework",
      artifact = "org.apache.felix:org.apache.felix.framework:3.0.8",
      sha1 = "7d97ac85b826e5221bbfddab709323bad2e81fdc",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_interactivity_api",
      artifact = "org.codehaus.plexus:plexus-interactivity-api:1.0-alpha-6",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "c06f0eb818633033f09a87d14c4cfb6f39af9a37",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  native.maven_jar(
      name = "groovy_groovy",
      artifact = "groovy:groovy:1.0-jsr-03",
      sha1 = "416d584168b227dbf88e252ee7e23f256cfb42ba",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 wanted version 1.0
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_provider_api",
      artifact = "org.apache.maven.wagon:wagon-provider-api:2.10",
      sha1 = "0cd9cdde3f56bb5250d87c54592f04cbc24f03bf",
  )


  # org.apache.httpcomponents:httpclient:jar:4.3.5
  native.maven_jar(
      name = "org_slf4j_slf4j_jcl",
      artifact = "org.slf4j:slf4j-jcl:1.5.11",
      sha1 = "71af637f0011ec7fccdf8a07d76d6075274bff33",
  )


  # javax.mail:mail:jar:1.4 got requested version
  # org.mortbay.jetty:jetty-util:jar:6.1.26 got requested version
  # javax.xml.bind:jaxb-api:jar:2.1
  # org.mortbay.jetty:jetty:jar:6.1.26 got requested version
  # javax.xml.soap:saaj-api:jar:1.3 got requested version
  native.maven_jar(
      name = "javax_activation_activation",
      artifact = "javax.activation:activation:1.1",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "e6cb541461c2834bdea3eb920f1884d1eb508b50",
  )


  # org.ow2.asm:asm-xml:jar:5.0.3 got requested version
  # org.ow2.asm:asm-util:jar:5.0.3 got requested version
  # org.ow2.asm:asm-tree:jar:5.0.3 got requested version
  # org.ow2.asm:asm:jar:5.0.3
  # org.ow2.asm:asm-analysis:jar:5.0.3 got requested version
  # org.ow2.asm:asm-commons:jar:5.0.3 got requested version
  native.maven_jar(
      name = "org_ow2_asm_asm_tree",
      artifact = "org.ow2.asm:asm-tree:5.0.3",
      sha1 = "287749b48ba7162fb67c93a026d690b29f410bed",
  )


  native.maven_jar(
      name = "org_mockito_mockito_all",
      artifact = "org.mockito:mockito-all:1.9.5",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "ant_ant_junit",
      artifact = "ant:ant-junit:1.6.2",
      sha1 = "3708f966de6a4c88f2cf2737a22e972ed3606901",
  )


  # org.mortbay.jetty:jetty-util:jar:6.1.26 got requested version
  # org.apache.sshd:sshd-core:jar:0.8.0 wanted version 1.6.4
  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "org_slf4j_slf4j_simple",
      artifact = "org.slf4j:slf4j-simple:1.3.1",
      sha1 = "1d5ffd87da8a23de9bf8dd0b51ee4e2aa16f315d",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "commons_jxpath_commons_jxpath",
      artifact = "commons-jxpath:commons-jxpath:1.3",
      sha1 = "c22d7d0f0f40eb7059a23cfa61773a416768b137",
  )


  # org.jboss.weld:weld-spi:jar:1.0
  # javax.enterprise:cdi-api:jar:1.0 got requested version
  # org.jboss.weld:weld-api:jar:1.0 got requested version
  native.maven_jar(
      name = "javax_xml_ws_jaxws_api",
      artifact = "javax.xml.ws:jaxws-api:2.1",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "40ca2854669a0be1a9ef0b79e9ded13a15456d8d",
  )


  # org.slf4j:slf4j-jcl:jar:1.6.1 got requested version
  # org.slf4j:slf4j-log4j12:jar:1.6.1 got requested version
  # org.slf4j:slf4j-api:jar:1.6.1
  # org.slf4j:jcl-over-slf4j:jar:1.6.1 got requested version
  # org.slf4j:slf4j-jdk14:jar:1.6.1 got requested version
  native.maven_jar(
      name = "org_slf4j_slf4j_jdk14",
      artifact = "org.slf4j:slf4j-jdk14:1.6.1",
      sha1 = "251899d8c17e29ed4c53d98c88e54241a14d9591",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9
  native.maven_jar(
      name = "org_apache_maven_maven_settings_builder",
      artifact = "org.apache.maven:maven-settings-builder:3.3.9",
      sha1 = "fe5ad82564dc07a31855da543db8d5376def3c26",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "regexp_regexp",
      artifact = "regexp:regexp:1.2",
      sha1 = "1ef2d52fc0c52ab09a213d1c61f9c4072597ba1a",
  )


  # org.slf4j:slf4j-jcl:jar:1.6.1 got requested version
  # org.apache.xbean:xbean-reflect:bundle:3.4 wanted version 1.2.12
  # org.slf4j:slf4j-jdk14:jar:1.6.1
  # org.slf4j:jcl-over-slf4j:jar:1.6.1 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 wanted version 1.2.17
  # org.slf4j:slf4j-log4j12:jar:1.6.1 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 wanted version 1.2.17
  # org.slf4j:slf4j-api:jar:1.6.1 got requested version
  # org.apache.mina:mina-transport-apr:bundle:2.0.5 wanted version 1.2.17
  # org.apache.mina:mina-statemachine:bundle:2.0.5 wanted version 1.2.17
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 wanted version 1.2.17
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 wanted version 1.2.17
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 wanted version 1.2.17
  native.maven_jar(
      name = "log4j_log4j",
      artifact = "log4j:log4j:1.2.16",
      sha1 = "7999a63bfccbc7c247a9aea10d83d4272bd492c6",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_servlet_jsp_jsp_api",
      artifact = "javax.servlet.jsp:jsp-api:2.1",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "63f943103f250ef1f3a4d5e94d145a0f961f5316",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_transaction_jta",
      artifact = "javax.transaction:jta:1.0.1B",
      repository = "http://repository.jboss.org/maven2/",
  )


  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "org_mortbay_jetty_jetty_util",
      artifact = "org.mortbay.jetty:jetty-util:6.1.26",
      sha1 = "e5642fe0399814e1687d55a3862aa5a3417226a9",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5
  native.maven_jar(
      name = "jdom_jdom",
      artifact = "jdom:jdom:1.0",
      sha1 = "a2ac1cd690ab4c80defe7f9bce14d35934c35cec",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_ssh_common",
      artifact = "org.apache.maven.wagon:wagon-ssh-common:2.10",
      sha1 = "edb124539696c2aa0d1c89ca342594a13fa82d2b",
  )


  # com.google.inject:guice:jar:4.0
  native.maven_jar(
      name = "javax_inject_javax_inject_tck",
      artifact = "javax.inject:javax.inject-tck:1",
      sha1 = "bb0090d50219c265be40fcc8e034dae37fa7be99",
  )


  # org.slf4j:slf4j-jcl:jar:1.6.1 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 wanted version 1.6.2
  # org.sonatype.plexus:plexus-cipher:jar:1.4 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 wanted version 1.6.6
  # net.sf.ehcache:ehcache-core:jar:2.2.0 wanted version 1.5.11
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 wanted version 1.7.5
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 wanted version 1.7.5
  # org.apache.maven:maven-builder-support:jar:3.3.9 wanted version 1.7.5
  # org.slf4j:slf4j-log4j12:jar:1.6.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.codehaus.plexus:plexus-utils:jar:3.0.22 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 wanted version 1.7.5
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 wanted version 1.7.5
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 wanted version 1.7.7
  # org.slf4j:jcl-over-slf4j:jar:1.6.1 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 wanted version 1.6.6
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-interactivity-api:jar:1.0-alpha-6 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 wanted version 1.6.2
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.mortbay.jetty:jetty:jar:6.1.26 wanted version 1.3.1
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 wanted version 1.6.6
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 wanted version 1.6.6
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-cli:jar:1.2 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 wanted version 1.7.7
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 wanted version 1.6.2
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-classworlds:jar:2.2.2
  # org.apache.maven.wagon:wagon-http:jar:2.10 wanted version 1.7.7
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 wanted version 1.7.7
  # org.apache.maven:maven-settings:jar:3.3.9 wanted version 1.7.5
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 wanted version 1.6.2
  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 1.7.5
  # org.slf4j:slf4j-jdk14:jar:1.6.1 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 wanted version 1.7.7
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 wanted version 1.6.6
  # org.apache.maven:maven-model-builder:jar:3.3.9 wanted version 1.7.5
  # org.apache.maven:maven-settings-builder:jar:3.3.9 wanted version 1.7.5
  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 wanted version 1.7.5
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 wanted version 1.7.5
  # org.apache.mina:mina-transport-apr:bundle:2.0.5 wanted version 1.6.6
  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.3 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5 wanted version 1.6.6
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 wanted version 1.6.2
  # org.apache.maven:maven-model:jar:3.3.9 wanted version 1.7.5
  # org.slf4j:slf4j-api:jar:1.6.1 got requested version
  # org.mortbay.jetty:jetty-util:jar:6.1.26 wanted version 1.3.1
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 wanted version 1.7.7
  # org.codehaus.plexus:plexus-interpolation:jar:1.21 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 wanted version 1.7.7
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 wanted version 1.6.2
  native.maven_jar(
      name = "org_slf4j_slf4j_api",
      artifact = "org.slf4j:slf4j-api:1.6.1",
      sha1 = "6f3b8a24bf970f17289b234284c94f43eb42f0e4",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "org_mortbay_jetty_jetty",
      artifact = "org.mortbay.jetty:jetty:6.1.26",
      sha1 = "2f546e289fddd5b1fab1d4199fbb6e9ef43ee4b0",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "asm_asm_util",
      artifact = "asm:asm-util:2.0",
      sha1 = "67bb992133cc345d2100644fd037ac14e0e94852",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "qdox_qdox",
      artifact = "qdox:qdox:1.3",
      sha1 = "887385a819ac59531e9ac0b5794ecccdfa5cf702",
  )


  # org.eclipse.sisu:org.eclipse.sisu.plexus:eclipse-plugin:0.3.2
  # javax.enterprise:cdi-api:jar:1.0 got requested version
  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  native.maven_jar(
      name = "javax_enterprise_cdi_api",
      artifact = "javax.enterprise:cdi-api:1.0",
      sha1 = "44c453f60909dfc223552ace63e05c694215156b",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "jmock_jmock_cglib",
      artifact = "jmock:jmock-cglib:1.0.1",
      sha1 = "4043ac63b3368367480f900d32a8162056734b6b",
  )


  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "org_apache_httpcomponents_httpclient",
      artifact = "org.apache.httpcomponents:httpclient:4.3.5",
      sha1 = "9783d89b8eea20a517a4afc5f979bd2882b54c44",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_cli",
      artifact = "org.codehaus.plexus:plexus-cli:1.2",
      sha1 = "4d14296323cc25a6356e5f2b755d4947bed0d34a",
  )


  # javax.enterprise:cdi-api:jar:1.0 wanted version 3.1
  # groovy:groovy:jar:1.0-jsr-03
  # org.jboss.weld:weld-api:jar:1.0 wanted version 3.1
  # org.apache.sshd:sshd-core:jar:0.8.0 wanted version 3.1
  # org.jboss.weld:weld-spi:jar:1.0 wanted version 3.1
  native.maven_jar(
      name = "commons_httpclient_commons_httpclient",
      artifact = "commons-httpclient:commons-httpclient:2.0.1",
      sha1 = "c11b55ab10c662f3ead4ef780120b3c323a237ca",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "xpp3_xpp3",
      artifact = "xpp3:xpp3:1.1.3.4-RC8",
      sha1 = "462e295d613b6970f2b6ae224d17ffd2a8c6fbcd",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  # org.springframework:spring-web:jar:2.0.5 got requested version
  # org.springframework:spring-jmx:jar:2.0.5 got requested version
  # org.springframework:spring-context:jar:2.0.5 got requested version
  native.maven_jar(
      name = "org_springframework_spring_beans",
      artifact = "org.springframework:spring-beans:2.0.5",
      sha1 = "0dd72e3a84b18d66c75ee324b8b66ebf2fcef779",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 got requested version
  native.maven_jar(
      name = "org_eclipse_aether_aether_api",
      artifact = "org.eclipse.aether:aether-api:1.0.2.v20150114",
      sha1 = "839f93a5213fb3e233b09bfd6d6b95669f7043c0",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "xerces_xerces",
      artifact = "xerces:xerces:2.4.0",
      sha1 = "9e2205a4b10554ffddc50bbc4ca8abeb1d537e14",
  )


  # org.mortbay.jetty:jetty-util:jar:6.1.26 got requested version
  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "javax_mail_mail",
      artifact = "javax.mail:mail:1.4",
      sha1 = "1aa1579ae5ecd41920c4f355b0a9ef40b68315dd",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_faces_jsf_api",
      artifact = "javax.faces:jsf-api:1.2_13",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "56d9b9a374c19f0c636b40611a2af8eb020e8349",
  )


  # org.ow2.asm:asm-xml:jar:5.0.3 got requested version
  # cglib:cglib:jar:3.1 wanted version 4.2
  # org.ow2.asm:asm:jar:5.0.3 got requested version
  # org.ow2.asm:asm-util:jar:5.0.3 got requested version
  # com.google.inject:guice:jar:4.0
  # org.ow2.asm:asm-tree:jar:5.0.3 got requested version
  # org.ow2.asm:asm-analysis:jar:5.0.3 got requested version
  # org.ow2.asm:asm-commons:jar:5.0.3 got requested version
  native.maven_jar(
      name = "org_ow2_asm_asm",
      artifact = "org.ow2.asm:asm:5.0.3",
      sha1 = "dcc2193db20e19e1feca8b1240dbbc4e190824fa",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_xbean_xbean_spring",
      artifact = "org.apache.xbean:xbean-spring:3.11.1",
      sha1 = "2a9bba0b07463f2bf0283ff6829f293f36a17c7c",
  )


  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5
  native.maven_jar(
      name = "com_google_collections_google_collections",
      artifact = "com.google.collections:google-collections:1.0",
      sha1 = "9ffe71ac6dcab6bc03ea13f5c2e7b2804e69b357",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_containers",
      artifact = "org.sonatype.sisu.inject:guice-bean-containers:2.1.1",
      sha1 = "6941af27583a87620995244ce2eeb4e4a7de9a22",
  )


  # org.apache.sshd:sshd-core:jar:0.8.0
  native.maven_jar(
      name = "net_sf_jpam_jpam",
      artifact = "net.sf.jpam:jpam:1.1",
      sha1 = "cb3d91c2dfda767518a371dbb02edfd6a4aa0600",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_scanners",
      artifact = "org.sonatype.sisu.inject:guice-bean-scanners:2.1.1",
      sha1 = "775b6e234ef9dcabdc0c3827bbbe43f28d875f7b",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5
  native.maven_jar(
      name = "org_apache_maven_maven_project",
      artifact = "org.apache.maven:maven-project:2.0.9",
      sha1 = "30ec37813df5a212888a1f3df0b27497ecef4ad8",
  )


  # org.apache.maven.wagon:wagon-http-shared:jar:2.10
  native.maven_jar(
      name = "org_jsoup_jsoup",
      artifact = "org.jsoup:jsoup:1.7.2",
      sha1 = "d7e275ba05aa380ca254f72d0c0ffebaedc3adcf",
  )


  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-model-builder:jar:3.3.9
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_compat",
      artifact = "org.apache.maven:maven-compat:3.3.9",
      sha1 = "b52d83991d361531d7fb709e9c80407a4f222247",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 got requested version
  native.maven_jar(
      name = "org_eclipse_aether_aether_impl",
      artifact = "org.eclipse.aether:aether-impl:1.0.2.v20150114",
      sha1 = "f147539e6e60dfbda9ef7f6d750066170f61b7a1",
  )


  # org.apache.httpcomponents:httpclient:jar:4.3.5
  native.maven_jar(
      name = "spy_spymemcached",
      artifact = "spy:spymemcached:2.6",
      repository = "http://files.couchbase.com/maven2/",
      sha1 = "644c9ee915df63940bf2d16b211ca2d756ffd3d1",
  )


  # axion:axion:jar:1.0-M3-dev
  native.maven_jar(
      name = "commons_primitives_commons_primitives",
      artifact = "commons-primitives:commons-primitives:1.0",
      sha1 = "82b45ce419ac2775d7903d7debf73c971fab61e2",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_eclipse_sisu_org_eclipse_sisu_plexus",
      artifact = "org.eclipse.sisu:org.eclipse.sisu.plexus:0.3.2",
      sha1 = "cd84cb43788de23847eec2999070f64381bdb495",
  )


  # org.apache.httpcomponents:httpclient:jar:4.3.5
  # net.java.dev.jna:jna-platform:jar:4.0.0 got requested version
  native.maven_jar(
      name = "net_java_dev_jna_jna",
      artifact = "net.java.dev.jna:jna:4.0.0",
      sha1 = "9b3a11c613ec3fd3440af4103b12c3de82d38b6e",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-cli:jar:1.2 got requested version
  # org.sonatype.plexus:plexus-cipher:jar:1.4 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-utils:jar:3.0.22
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # javax.inject:javax.inject-tck:jar:1 got requested version
  # org.sonatype.sisu:sisu-guice:jar:2.9.4 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # com.google.inject:guice:jar:4.0 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # javax.enterprise:cdi-api:jar:1.0 got requested version
  # org.codehaus.plexus:plexus-utils:jar:3.0.22 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.3 got requested version
  # org.codehaus.plexus:plexus-classworlds:jar:2.2.2 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-interactivity-api:jar:1.0-alpha-6 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-interpolation:jar:1.21 got requested version
  native.maven_jar(
      name = "javax_inject_javax_inject",
      artifact = "javax.inject:javax.inject:1",
      sha1 = "6975da39a7040257bd51d21a231b76c915872d38",
  )


  # org.ow2.asm:asm-xml:jar:5.0.3 got requested version
  # org.ow2.asm:asm:jar:5.0.3 got requested version
  # org.ow2.asm:asm-tree:jar:5.0.3 got requested version
  # org.ow2.asm:asm-analysis:jar:5.0.3 got requested version
  # org.ow2.asm:asm-commons:jar:5.0.3 got requested version
  # org.ow2.asm:asm-util:jar:5.0.3
  native.maven_jar(
      name = "org_ow2_asm_asm_xml",
      artifact = "org.ow2.asm:asm-xml:5.0.3",
      sha1 = "440c3f0a1e2459716ecc65d67ed3bde51727893d",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  native.maven_jar(
      name = "org_springframework_spring_jmx",
      artifact = "org.springframework:spring-jmx:2.0.5",
      sha1 = "8a1b6dc1a25ce241944f96e808898cfeccdfc4ec",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 wanted version 1.9.2
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 wanted version 1.9.2
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 wanted version 1.9.2
  native.maven_jar(
      name = "com_thoughtworks_qdox_qdox",
      artifact = "com.thoughtworks.qdox:qdox:1.6.3",
      sha1 = "934be94605a47f9ce8ab527ebe9d6d30e3c4c02a",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4 wanted version 3.0.1
  # groovy:groovy:jar:1.0-jsr-03
  # org.apache.xbean:xbean-spring:bundle:3.4 wanted version 3.0.1
  native.maven_jar(
      name = "mx4j_mx4j",
      artifact = "mx4j:mx4j:2.0-beta-1",
      sha1 = "a17f1a0b2f59d3a6fd4dfcc1b6947d308800221e",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_statemachine",
      artifact = "org.apache.mina:mina-statemachine:2.0.5",
      sha1 = "9d98a61b2be81d43a1faca29f95074b481459669",
  )


  # javax.xml.ws:jaxws-api:jar:2.1
  native.maven_jar(
      name = "javax_xml_bind_jaxb_api",
      artifact = "javax.xml.bind:jaxb-api:2.1",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "d68570e722cffe2000358ce9c661a0b0bf1ebe11",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "asm_asm_tree",
      artifact = "asm:asm-tree:2.0",
      sha1 = "bc07afd4bbf49d18aeb721e87c91efe4ec28a848",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-interpolation:jar:1.21 wanted version 1.0-alpha-9-stable-1
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-cli:jar:1.2 wanted version 1.0-alpha-34
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_container_default",
      artifact = "org.codehaus.plexus:plexus-container-default:1.5.5",
      sha1 = "0265fa2851d31c2e2177859a518987595efe146b",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  # org.apache.sshd:sshd-core:jar:0.8.0 wanted version 3.0.6.RELEASE
  # org.springframework:spring-web:jar:2.0.5 got requested version
  # org.springframework:spring-jmx:jar:2.0.5 got requested version
  native.maven_jar(
      name = "org_springframework_spring_context",
      artifact = "org.springframework:spring-context:2.0.5",
      sha1 = "e44af7bc2262dd11841891c83e541928bd5fd372",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_integration_jmx",
      artifact = "org.apache.mina:mina-integration-jmx:2.0.5",
      sha1 = "08d33d6c5f71ca6ea813ece9d439d975ac1ec76d",
  )


  # org.jboss.weld:weld-spi:jar:1.0 wanted version 2.5
  # groovy:groovy:jar:1.0-jsr-03
  # org.jboss.weld:weld-api:jar:1.0 wanted version 2.5
  # javax.enterprise:cdi-api:jar:1.0 wanted version 2.5
  native.maven_jar(
      name = "javax_servlet_servlet_api",
      artifact = "javax.servlet:servlet-api:2.3",
      sha1 = "0137a24e9f62973f01f16dd23fc1b5a9964fd9ef",
  )


  # org.apache.maven:maven-settings-builder:jar:3.3.9
  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 wanted version 2.0.9
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 wanted version 2.0.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 wanted version 2.0.9
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_plugin_api",
      artifact = "org.apache.maven:maven-plugin-api:3.3.9",
      sha1 = "aa706ea7ca23776861b4eb2cea97cf345e791496",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "xstream_xstream",
      artifact = "xstream:xstream:1.1.1",
      sha1 = "e7b8033bdb443c9193279b3a02121a62537385ee",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-cli:jar:1.2 got requested version
  # groovy:groovy:jar:1.0-jsr-03
  # org.apache.maven:maven-embedder:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-model-builder:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-compat:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-core:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-builder-support:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-settings-builder:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-settings:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-plugin-api:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-model:jar:3.3.9 wanted version 1.2
  # org.apache.maven:maven-aether-provider:jar:3.3.9 wanted version 1.2
  native.maven_jar(
      name = "commons_cli_commons_cli",
      artifact = "commons-cli:commons-cli:1.0",
      sha1 = "6dac9733315224fc562f6268df58e92d65fd0137",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_embedder",
      artifact = "org.apache.maven:maven-embedder:3.3.9",
      sha1 = "ca3699a7ec3c8db0d97675f28b7bd04e09242ad4",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_inject",
      artifact = "org.sonatype.sisu.inject:guice-bean-inject:2.1.1",
      sha1 = "0fd099d4f890ee24f5aed2f10c8ae5f49e903db0",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.sshd:sshd-core:jar:0.8.0 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "tomcat_tomcat_apr",
      artifact = "tomcat:tomcat-apr:5.5.23",
      sha1 = "c2cb1bcaa38e9a05ac00f5c11225dedcebd72ee6",
  )


  # org.apache.sshd:sshd-core:jar:0.8.0
  native.maven_jar(
      name = "com_jcraft_jsch",
      artifact = "com.jcraft:jsch:0.1.42",
      sha1 = "a86104b0f2e0c0bab5b0df836065823a99b5e334",
  )


  # axion:axion:jar:1.0-M3-dev
  native.maven_jar(
      name = "javacc_javacc",
      artifact = "javacc:javacc:3.2",
      sha1 = "ee416cb5d6aa88473efe487f42dc1410360f7948",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_osgi_org_osgi_compendium",
      artifact = "org.osgi:org.osgi.compendium:4.2.0",
      sha1 = "1e506145ec53132bce79ce8798d98026b598fd48",
  )


  # org.apache.sshd:sshd-core:jar:0.8.0
  native.maven_jar(
      name = "bouncycastle_bcprov_jdk15",
      artifact = "bouncycastle:bcprov-jdk15:140",
      sha1 = "83933f3f3312473afbe42a232392b3feffaadc36",
  )


  # javax.enterprise:cdi-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # org.jboss.weld:weld-api:jar:1.0
  native.maven_jar(
      name = "org_jboss_weld_weld_spi",
      artifact = "org.jboss.weld:weld-spi:1.0",
      sha1 = "73cf18fa00007c317ac7b6eac599c2ff56fb662b",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 got requested version
  native.maven_jar(
      name = "org_eclipse_aether_aether_spi",
      artifact = "org.eclipse.aether:aether-spi:1.0.2.v20150114",
      sha1 = "8428dfa330107984f3e3ac05cc3ebd50b2676866",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_eclipse_aether_aether_transport_wagon",
      artifact = "org.eclipse.aether:aether-transport-wagon:1.0.2.v20150114",
      sha1 = "1d1b79f566c8793058e4c4cd601c3f52783192c1",
  )


  # org.ow2.asm:asm-xml:jar:5.0.3 got requested version
  # org.ow2.asm:asm-util:jar:5.0.3 got requested version
  # org.ow2.asm:asm:jar:5.0.3 got requested version
  # org.ow2.asm:asm-analysis:jar:5.0.3 got requested version
  # org.ow2.asm:asm-commons:jar:5.0.3 got requested version
  # org.ow2.asm:asm-tree:jar:5.0.3
  native.maven_jar(
      name = "org_ow2_asm_asm_analysis",
      artifact = "org.ow2.asm:asm-analysis:5.0.3",
      sha1 = "c7126aded0e8e13fed5f913559a0dd7b770a10f3",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_converters",
      artifact = "org.sonatype.sisu.inject:guice-bean-converters:2.1.1",
      sha1 = "2162d24d46358825138aff1c266ad466149bccd0",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_shim",
      artifact = "org.sonatype.sisu.inject:guice-plexus-shim:2.1.1",
      sha1 = "43f1dac9d88b22a817331c6c3fa32dbca6813651",
  )


  # org.apache.httpcomponents:httpclient:jar:4.3.5
  native.maven_jar(
      name = "net_sf_ehcache_ehcache_core",
      artifact = "net.sf.ehcache:ehcache-core:2.2.0",
      sha1 = "c3fba1f00073a38d370990ce7d8b5d4f9b05a11a",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "antlr_antlr",
      artifact = "antlr:antlr:2.7.5",
      sha1 = "6a658f16a827b3deff9cc25d2b9bbcf41e000335",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-cli:jar:1.2 got requested version
  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.plexus:plexus-cipher:jar:1.4 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-utils:jar:3.0.22
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.3 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-classworlds:jar:2.2.2 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-interactivity-api:jar:1.0-alpha-6 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.codehaus.plexus:plexus-interpolation:jar:1.21 got requested version
  # org.codehaus.plexus:plexus-utils:jar:3.0.22 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_sisu_inject_plexus",
      artifact = "org.sonatype.sisu:sisu-inject-plexus:2.1.1",
      sha1 = "7a5642a5a9944bfe336f911df887619f9eb504c1",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  native.maven_jar(
      name = "commons_beanutils_commons_beanutils",
      artifact = "commons-beanutils:commons-beanutils:1.7.0",
      sha1 = "5675fd96b29656504b86029551973d60fb41339b",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "bsf_bsf",
      artifact = "bsf:bsf:2.3.0-rc1",
      sha1 = "b6be87b58571101e95525228cf23e934b4eabe35",
  )


  # javax.xml.bind:jaxb-api:jar:2.1
  native.maven_jar(
      name = "javax_xml_stream_stax_api",
      artifact = "javax.xml.stream:stax-api:1.0-2",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "d6337b0de8b25e53e81b922352fbea9f9f57ba0b",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9
  native.maven_jar(
      name = "org_apache_maven_maven_builder_support",
      artifact = "org.apache.maven:maven-builder-support:3.3.9",
      sha1 = "a96f29da7623c0e1db9824f628548fe8181f6dd0",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "commons_io_commons_io",
      artifact = "commons-io:commons-io:2.2",
      sha1 = "83b5b8a7ba1c08f9e8c8ff2373724e33d3c1e22a",
  )


  # axion:axion:jar:1.0-M3-dev
  # org.apache.httpcomponents:httpclient:jar:4.3.5 wanted version 1.6
  native.maven_jar(
      name = "commons_codec_commons_codec",
      artifact = "commons-codec:commons-codec:1.2",
      sha1 = "397f4731a9f9b6eb1907e224911c77ea3aa27a8b",
  )


  # org.apache.maven.wagon:wagon-provider-test:jar:2.10
  native.maven_jar(
      name = "org_easymock_easymock",
      artifact = "org.easymock:easymock:3.2",
      sha1 = "00c82f7fa3ef377d8954b1db25123944b5af2ba4",
  )


  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_component_metadata",
      artifact = "org.codehaus.plexus:plexus-component-metadata:1.5.5",
      sha1 = "a032204a2274fe4fe99b342d33917ef37cf0a3b1",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-plugin-api:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-compat:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-builder-support:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-embedder:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-settings-builder:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-settings:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-core:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-model:jar:3.3.9 wanted version 1.7
  # org.apache.maven:maven-aether-provider:jar:3.3.9 wanted version 1.7
  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.3
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 wanted version 1.7
  native.maven_jar(
      name = "org_sonatype_plexus_plexus_cipher",
      artifact = "org.sonatype.plexus:plexus-cipher:1.4",
      sha1 = "50ade46f23bb38cd984b4ec560c46223432aac38",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "xml_apis_xml_apis",
      artifact = "xml-apis:xml-apis:1.0.b2",
      sha1 = "3136ca936f64c9d68529f048c2618bd356bf85c9",
  )


  # groovy:groovy:jar:1.0-jsr-03
  # org.sonatype.sisu.inject:cglib:jar:2.2.1-v20090111 wanted version 3.1
  # pmd:pmd:jar:4.3 wanted version 3.2
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 wanted version 3.1
  native.maven_jar(
      name = "asm_asm",
      artifact = "asm:asm:2.0",
      sha1 = "0b8b4f75228a14ab34af41635db228d8dcfba347",
  )


  # com.google.inject:guice:jar:4.0
  native.maven_jar(
      name = "com_google_guava_guava_testlib",
      artifact = "com.google.guava:guava-testlib:16.0.1",
      sha1 = "63a30f20475e316d20dcf3f58dbc849b28670470",
  )


  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 3.3.9
  native.maven_jar(
      name = "org_apache_maven_maven_artifact",
      artifact = "org.apache.maven:maven-artifact:3.5.0",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "org_jboss_weld_weld_api",
      artifact = "org.jboss.weld:weld-api:1.0",
      sha1 = "e6cafae11f89c3bf39012db726bb8062f2a3a7ac",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # tomcat:tomcat-apr:jar:5.5.23 wanted version 1.0.4
  native.maven_jar(
      name = "commons_logging_commons_logging_api",
      artifact = "commons-logging:commons-logging-api:1.1",
      sha1 = "7d4cf5231d46c8524f9b9ed75bb2d1c69ab93322",
  )


  # org.apache.maven.wagon:wagon-http:jar:2.10
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_http_shared",
      artifact = "org.apache.maven.wagon:wagon-http-shared:2.10",
      sha1 = "3b96251214df697e902c849eb0b4a0efa2cd1a53",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_http",
      artifact = "org.apache.maven.wagon:wagon-http:2.10",
      sha1 = "b611dd343b14014af6201dd87d121b8d9a7eb5e1",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "radeox_radeox_oro",
      artifact = "radeox:radeox-oro:0.9",
      sha1 = "f91d4528652d713faa54039b26af468a1229328b",
  )


  # org.codehaus.plexus:plexus-interpolation:jar:1.21 wanted version 3.0.8
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 wanted version 1.4.5
  # org.codehaus.plexus:plexus-utils:jar:3.0.22 wanted version 2.0.5
  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 3.0.22
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_utils",
      artifact = "org.codehaus.plexus:plexus-utils:3.0.24",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_converters",
      artifact = "org.sonatype.sisu.inject:guice-plexus-converters:2.1.1",
      sha1 = "0095f9c4a21901b524b6b9cee357ffe0456133ac",
  )


  # jmock:jmock-cglib:jar:1.0.1
  native.maven_jar(
      name = "cglib_cglib_full",
      artifact = "cglib:cglib-full:2.0",
      sha1 = "1283640acefb2d20744398d9eda848d6d4d90339",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_scanners",
      artifact = "org.sonatype.sisu.inject:guice-plexus-scanners:2.1.1",
      sha1 = "df98529bcd99b6c3c56fb684eb18abf08c72df24",
  )


  # net.sf.ehcache:ehcache-core:jar:2.2.0
  native.maven_jar(
      name = "net_sf_jsr107cache_jsr107cache",
      artifact = "net.sf.jsr107cache:jsr107cache:1.0",
      sha1 = "f695928a5babaafc6aaa821f6fefa88613509191",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "mockobjects_mockobjects_core",
      artifact = "mockobjects:mockobjects-core:0.09",
      sha1 = "2b3f525b29b03f420e4027083f25ae957d955d3a",
  )


  # org.springframework:spring-web:jar:2.0.5 got requested version
  # org.springframework:spring-jmx:jar:2.0.5 got requested version
  # org.springframework:spring-context:jar:2.0.5 got requested version
  # org.springframework:spring-beans:jar:2.0.5
  native.maven_jar(
      name = "org_springframework_spring_core",
      artifact = "org.springframework:spring-core:2.0.5",
      sha1 = "fbedb00cff4345eb28006e639af4a4ece8b44e41",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "nekohtml_nekohtml",
      artifact = "nekohtml:nekohtml:0.7.7",
      sha1 = "af5b78d912b1d52740d15bed17b1287af0d86115",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "axion_axion",
      artifact = "axion:axion:1.0-M3-dev",
      sha1 = "f33a7e6c446494923e6084772a90c0fa79496888",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.httpcomponents:httpclient:jar:4.3.5
  # org.apache.httpcomponents:httpclient:jar:4.3.5 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "org_apache_httpcomponents_httpcore",
      artifact = "org.apache.httpcomponents:httpcore:4.3.2",
      sha1 = "31fbbff1ddbf98f3aa7377c94d33b0447c646b6e",
  )


  # org.easymock:easymock:jar:3.2 wanted version 2.2.2
  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  # groovy:groovy:jar:1.0-jsr-03 wanted version 2.1
  native.maven_jar(
      name = "cglib_cglib_nodep",
      artifact = "cglib:cglib-nodep:2.1_2",
      sha1 = "9168b61c821becd374fd7885c6462ec703c31145",
  )


  # org.sonatype.sisu:sisu-guice:jar:2.9.4
  native.maven_jar(
      name = "org_sonatype_sisu_inject_cglib",
      artifact = "org.sonatype.sisu.inject:cglib:2.2.1-v20090111",
      sha1 = "07ce5e983fd0e6c78346f4c9cbfa39d83049dda2",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "radeox_radeox",
      artifact = "radeox:radeox:0.9",
      sha1 = "cdcc5ebc47bac19f4b0c80873971b84612297f0a",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_aether_provider",
      artifact = "org.apache.maven:maven-aether-provider:3.3.9",
  )


  # org.apache.mina:mina-core:bundle:2.0.5
  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_transport_apr",
      artifact = "org.apache.mina:mina-transport-apr:2.0.5",
      sha1 = "10df28141193d5e982f3cc716c31f4d799c4aa2e",
  )


  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 1.21
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_interpolation",
      artifact = "org.codehaus.plexus:plexus-interpolation:1.24",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "ant_ant_launcher",
      artifact = "ant:ant-launcher:1.6.2",
      sha1 = "6259fc1c72d860f047a9389f66496f0dc1dc70f2",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_settings",
      artifact = "org.apache.maven:maven-settings:3.3.9",
      sha1 = "68d4180c51468ae8f45869f8f9c569092262fcca",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 got requested version
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 got requested version
  native.maven_jar(
      name = "org_eclipse_aether_aether_util",
      artifact = "org.eclipse.aether:aether-util:1.0.2.v20150114",
      sha1 = "d2d3c74a5210544b5cdce89a2c1d1c62835692d1",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_osgi_org_osgi_core",
      artifact = "org.osgi:org.osgi.core:4.2.0",
      sha1 = "66ab449ff3aa5c4adfc82c89025cc983b422eb95",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-transport-apr:bundle:2.0.5 wanted version 1.6.6
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-statemachine:bundle:2.0.5 wanted version 1.6.6
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 wanted version 1.6.6
  native.maven_jar(
      name = "org_slf4j_jcl_over_slf4j",
      artifact = "org.slf4j:jcl-over-slf4j:1.7.7",
      sha1 = "56003dcd0a31deea6391b9e2ef2f2dc90b205a92",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_integration_beans",
      artifact = "org.apache.mina:mina-integration-beans:2.0.5",
      sha1 = "0b58a9bd5d3fd461cae5419c67c6fd0f1277f4d4",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_servlet_jstl",
      artifact = "javax.servlet:jstl:1.2",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "74aca283cd4f4b4f3e425f5820cda58f44409547",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_springframework_spring",
      artifact = "org.springframework:spring:2.5.6.SEC03",
      sha1 = "cb686a65b6c4516a32173cb60385d02027440620",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 wanted version 3.1.6
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 wanted version 3.1.6
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 wanted version 3.1.6
  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 wanted version 3.1.6
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 wanted version 3.1.6
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 wanted version 3.1.6
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_sisu_guice",
      artifact = "org.sonatype.sisu:sisu-guice:2.9.4",
      sha1 = "e2b94d300e70bb2410224e1757f78df9e4fe466a",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "ognl_ognl",
      artifact = "ognl:ognl:3.0.5",
      sha1 = "e35387ec9e4ca6908dcf184cd4766dd1fa8838d8",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  native.maven_jar(
      name = "org_springframework_spring_web",
      artifact = "org.springframework:spring-web:2.0.5",
      sha1 = "8a15320e51c5aae63c9af3bcff4ff671a7054070",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "org_testng_testng",
      artifact = "org.testng:testng:5.10",
  )


  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 wanted version 2.4
  # org.apache.maven:maven-settings:jar:3.3.9 wanted version 2.5.2
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 wanted version 2.4
  # org.sonatype.plexus:plexus-sec-dispatcher:jar:1.3 wanted version 2.4
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 wanted version 2.4
  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 wanted version 2.4
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 wanted version 2.4
  # org.codehaus.plexus:plexus-classworlds:jar:2.2.2 wanted version 2.4
  # org.codehaus.plexus:plexus-interactivity-api:jar:1.0-alpha-6 wanted version 2.4
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 wanted version 2.5.2
  # org.sonatype.plexus:plexus-cipher:jar:1.4 wanted version 2.4
  # org.codehaus.plexus:plexus-utils:jar:3.0.22 wanted version 2.4
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 wanted version 2.4
  # org.apache.maven:maven-core:jar:3.3.9 wanted version 2.5.2
  # org.codehaus.plexus:plexus-interpolation:jar:1.21 wanted version 2.4
  # org.apache.maven:maven-builder-support:jar:3.3.9 wanted version 2.5.2
  # org.apache.maven:maven-model:jar:3.3.9 wanted version 2.5.2
  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 2.5.2
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-cli:jar:1.2 wanted version 2.4
  # org.apache.maven:maven-plugin-api:jar:3.3.9 wanted version 2.5.2
  # org.apache.maven:maven-model-builder:jar:3.3.9 wanted version 2.5.2
  # org.apache.maven:maven-settings-builder:jar:3.3.9 wanted version 2.5.2
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 wanted version 2.4
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5
  # org.apache.maven:maven-compat:jar:3.3.9 wanted version 2.5.2
  # org.apache.maven:maven-embedder:jar:3.3.9 wanted version 2.5.2
  # org.eclipse.sisu:org.eclipse.sisu.plexus:eclipse-plugin:0.3.2 wanted version 2.5.2
  # org.apache.maven:maven-aether-provider:jar:3.3.9 wanted version 2.5.2
  native.maven_jar(
      name = "org_codehaus_plexus_plexus_classworlds",
      artifact = "org.codehaus.plexus:plexus-classworlds:2.2.2",
      sha1 = "3a2bad2b58c1ca765d3f471cea8c1655d70fdfd9",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "classworlds_classworlds",
      artifact = "classworlds:classworlds:1.1-alpha-2",
      sha1 = "05adf2e681c57d7f48038b602f3ca2254ee82d47",
  )


  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 wanted version 2.6
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 wanted version 2.6
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 wanted version 2.6
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 wanted version 2.6
  # org.apache.mina:mina-statemachine:bundle:2.0.5 wanted version 2.6
  # org.apache.mina:mina-transport-apr:bundle:2.0.5 wanted version 2.6
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 wanted version 2.6
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 wanted version 2.6
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 wanted version 2.6
  # commons-cli:commons-cli:jar:1.0
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 wanted version 2.6
  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 wanted version 2.6
  # org.apache.mina:mina-core:bundle:2.0.5 wanted version 2.6
  # org.apache.maven.wagon:wagon-file:jar:2.10 wanted version 2.6
  # org.apache.maven.wagon:wagon-http:jar:2.10 wanted version 2.6
  native.maven_jar(
      name = "commons_lang_commons_lang",
      artifact = "commons-lang:commons-lang:1.0",
      sha1 = "ac4ab3b02823ea2997c163433d9d44132bd2446a",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_provider_test",
      artifact = "org.apache.maven.wagon:wagon-provider-test:2.10",
      sha1 = "a500a712c3f35a8eee4c8b8b6c93284093467256",
  )


  # com.google.guava:guava:bundle:18.0 wanted version 1.3.9
  native.maven_jar(
      name = "com_google_code_findbugs_jsr305",
      artifact = "com.google.code.findbugs:jsr305:3.0.1",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_model_builder",
      artifact = "org.apache.maven:maven-model-builder:3.3.9",
      sha1 = "e2055f9adb9f3c9a93e6b36fffe79781a785de2d",
  )


  # org.ow2.asm:asm-xml:jar:5.0.3 got requested version
  # org.ow2.asm:asm-util:jar:5.0.3 got requested version
  # org.ow2.asm:asm:jar:5.0.3 got requested version
  # org.ow2.asm:asm-tree:jar:5.0.3 got requested version
  # org.ow2.asm:asm-analysis:jar:5.0.3 got requested version
  # org.ow2.asm:asm-commons:jar:5.0.3
  native.maven_jar(
      name = "org_ow2_asm_asm_util",
      artifact = "org.ow2.asm:asm-util:5.0.3",
      sha1 = "1512e5571325854b05fb1efce1db75fcced54389",
  )


  # org.apache.sshd:sshd-core:jar:0.8.0
  native.maven_jar(
      name = "ch_ethz_ganymed_ganymed_ssh2",
      artifact = "ch.ethz.ganymed:ganymed-ssh2:build210",
      sha1 = "b2f81c85a7a2a1b43727d2582710af85c979050b",
  )


  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_binders",
      artifact = "org.sonatype.sisu.inject:guice-plexus-binders:2.1.1",
      sha1 = "21278c5507e75e1f80db817b28aa57d8862bca3e",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 wanted version 2.0.9
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 wanted version 2.0.9
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5 wanted version 2.0.9
  # org.apache.maven:maven-aether-provider:jar:3.3.9
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_model",
      artifact = "org.apache.maven:maven-model:3.3.9",
      sha1 = "6efde8cbcb4de4c47f7e9c2a3ab2806022b5c70f",
  )


  # com.google.truth:truth:jar:0.30
  native.maven_jar(
      name = "com_google_errorprone_error_prone_annotations",
      artifact = "com.google.errorprone:error_prone_annotations:2.0.8",
      sha1 = "54e2d56cb157df08cbf183149bcf50c9f5151ed4",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "openejb_openejb_loader",
      artifact = "openejb:openejb-loader:0.9.2",
      sha1 = "84e3f3e4fd0523d2d0656ae561273dde06f05a74",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_locators",
      artifact = "org.sonatype.sisu.inject:guice-bean-locators:2.1.1",
      sha1 = "e36f1a088e149fdab0aac40ef0a0b55cd34e7b79",
  )


  # com.google.inject:guice:jar:4.0
  native.maven_jar(
      name = "cglib_cglib",
      artifact = "cglib:cglib:3.1",
      sha1 = "1f1cb6c7a7479e0c7fd7987109e503914bebe84a",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_maven_maven_core",
      artifact = "org.apache.maven:maven-core:3.3.9",
      sha1 = "47154012330ea639849c618ebc11cff6870e570a",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_metadata",
      artifact = "org.sonatype.sisu.inject:guice-plexus-metadata:2.1.1",
      sha1 = "8fa4503f4c52706568dafe014e07c775dcee30c6",
  )


  # org.easymock:easymock:jar:3.2
  native.maven_jar(
      name = "org_objenesis_objenesis",
      artifact = "org.objenesis:objenesis:1.3",
      sha1 = "dc13ae4faca6df981fc7aeb5a522d9db446d5d50",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "pmd_pmd",
      artifact = "pmd:pmd:4.3",
      sha1 = "2673726a8f31c2645b1548fd175716860aa0cef8",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_tck",
      artifact = "org.sonatype.sisu.inject:guice-plexus-tck:2.1.1",
  )


  # org.ow2.asm:asm-xml:jar:5.0.3 got requested version
  # org.ow2.asm:asm-util:jar:5.0.3 got requested version
  # org.ow2.asm:asm:jar:5.0.3 got requested version
  # org.ow2.asm:asm-analysis:jar:5.0.3
  # org.ow2.asm:asm-tree:jar:5.0.3 got requested version
  # org.ow2.asm:asm-commons:jar:5.0.3 got requested version
  native.maven_jar(
      name = "org_ow2_asm_asm_commons",
      artifact = "org.ow2.asm:asm-commons:5.0.3",
      sha1 = "a7111830132c7f87d08fe48cb0ca07630f8cb91c",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_persistence_persistence_api",
      artifact = "javax.persistence:persistence-api:1.0",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "5725f57873e05e068803e2bf9d5a8ea3740ffec5",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  native.maven_jar(
      name = "org_apache_maven_wagon_wagon_ssh_common_test",
      artifact = "org.apache.maven.wagon:wagon-ssh-common-test:2.10",
      sha1 = "24f5e402613a72d053b3b557cb8ffd8a10450fbc",
  )


  # org.mortbay.jetty:jetty-util:jar:6.1.26 got requested version
  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "geronimo_spec_geronimo_spec_jta",
      artifact = "geronimo-spec:geronimo-spec-jta:1.0.1B-rc4",
      sha1 = "790d5f324b49f949c947344ee2d60b45205a2932",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "asm_asm_attrs",
      artifact = "asm:asm-attrs:2.0",
      sha1 = "14893c641d6162eeb0f4e8349497ce2733577fe2",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "tonic_jarjar",
      artifact = "tonic:jarjar:0.5",
      sha1 = "69b7f6fcb92684c852512360243eee4d2333ada7",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 wanted version 1.6.6
  # org.apache.sshd:sshd-core:jar:0.8.0 wanted version 1.6.4
  # org.apache.mina:mina-transport-apr:bundle:2.0.5 wanted version 1.6.6
  # org.apache.maven.wagon:wagon-provider-api:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-http:jar:2.10 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-statemachine:bundle:2.0.5 wanted version 1.6.6
  # org.apache.maven.wagon:wagon-http-shared:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-ssh-common:jar:2.10
  # org.apache.maven.wagon:wagon-provider-test:jar:2.10 got requested version
  # org.apache.maven.wagon:wagon-file:jar:2.10 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 wanted version 1.6.6
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 wanted version 1.6.6
  native.maven_jar(
      name = "org_slf4j_slf4j_log4j12",
      artifact = "org.slf4j:slf4j-log4j12:1.7.7",
      sha1 = "58f588119ffd1702c77ccab6acb54bfb41bed8bd",
  )


  # org.codehaus.plexus:plexus-container-default:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-annotations:jar:1.5.5 got requested version
  # org.codehaus.plexus:plexus-component-metadata:maven-plugin:1.5.5
  native.maven_jar(
      name = "org_apache_xbean_xbean_reflect",
      artifact = "org.apache.xbean:xbean-reflect:3.4",
      sha1 = "26fd55dceb037f4789b399b22874d74f4d2db66f",
  )


  # org.eclipse.aether:aether-api:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-spi:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-impl:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-util:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-transport-wagon:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.aether:aether-connector-basic:jar:1.0.2.v20150114 wanted version 0.1.1
  # org.eclipse.sisu:org.eclipse.sisu.plexus:eclipse-plugin:0.3.2
  native.maven_jar(
      name = "org_eclipse_sisu_org_eclipse_sisu_inject",
      artifact = "org.eclipse.sisu:org.eclipse.sisu.inject:0.3.2",
      sha1 = "59044b92ec27cc6fda7a2d24b2cd6cec23f31d5b",
  )


  # ognl:ognl:jar:3.0.5
  native.maven_jar(
      name = "javassist_javassist",
      artifact = "javassist:javassist:3.11.0.GA",
      sha1 = "2c00105734a57e9ee4f27e4b17cd43200e5f0ff8",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_sisu_inject_bean",
      artifact = "org.sonatype.sisu:sisu-inject-bean:2.1.1",
      sha1 = "20d883846c84d237491a3830fea3d72d2fc01d5e",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_reflect",
      artifact = "org.sonatype.sisu.inject:guice-bean-reflect:2.1.1",
      sha1 = "7ee8b5d99c319d0a3d4fe3e130a1512b4a43ad66",
  )


  # org.mortbay.jetty:jetty-util:jar:6.1.26 got requested version
  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "org_slf4j_jcl104_over_slf4j",
      artifact = "org.slf4j:jcl104-over-slf4j:1.3.1",
      sha1 = "a5ae9b6d6249e5546ab889525ea6e7fd02f97cdd",
  )


  # org.slf4j:slf4j-jcl:jar:1.6.1 got requested version
  # org.slf4j:slf4j-jdk14:jar:1.6.1
  # org.slf4j:slf4j-log4j12:jar:1.6.1 got requested version
  # org.slf4j:slf4j-api:jar:1.6.1 got requested version
  # ch.qos.cal10n:cal10n-api:jar:0.7.4 got requested version
  # org.slf4j:jcl-over-slf4j:jar:1.6.1 got requested version
  native.maven_jar(
      name = "ch_qos_cal10n_cal10n_api",
      artifact = "ch.qos.cal10n:cal10n-api:0.7.4",
      sha1 = "132b7e1702af0335cf4259d30aaf959264db688f",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "jboss_javassist",
      artifact = "jboss:javassist:3.7.ga",
      sha1 = "6d271a67a1d8718bfb225ace5a25f1c09427c9f8",
  )


  # javax.xml.ws:jaxws-api:jar:2.1
  native.maven_jar(
      name = "javax_xml_soap_saaj_api",
      artifact = "javax.xml.soap:saaj-api:1.3",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "4e0c860c1bf18b54ccb10a3c7ab2e4d61452faff",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.sshd:sshd-core:jar:0.8.0 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-statemachine:bundle:2.0.5
  # org.apache.mina:mina-integration-beans:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "com_jcraft_jzlib",
      artifact = "com.jcraft:jzlib:1.1.1",
      sha1 = "a1551373315ffc2f96130a0e5704f74e151777ba",
  )


  # com.google.truth:truth:jar:0.30 wanted version 4.10
  native.maven_jar(
      name = "junit_junit",
      artifact = "junit:junit:4.4",
  )


  # groovy:groovy:jar:1.0-jsr-03 wanted version 3.0-dev2
  # axion:axion:jar:1.0-M3-dev
  native.maven_jar(
      name = "commons_collections_commons_collections",
      artifact = "commons-collections:commons-collections:3.0",
      sha1 = "aa12980fe4eca7331a660bdeed371d024687c68d",
  )


  # org.apache.maven.wagon:wagon-ssh-common-test:jar:2.10
  native.maven_jar(
      name = "org_apache_sshd_sshd_core",
      artifact = "org.apache.sshd:sshd-core:0.8.0",
      sha1 = "76af0d5f0716449eb1431f5dff3c99d2468902a3",
  )


  # org.apache.xbean:xbean-reflect:bundle:3.4 got requested version
  # org.springframework:spring-beans:jar:2.0.5 wanted version 1.1
  # org.apache.xbean:xbean-spring:bundle:3.4 got requested version
  # net.sf.jpam:jpam:jar:1.1 wanted version 1.0.4
  # commons-cli:commons-cli:jar:1.0 wanted version 1.0
  # commons-beanutils:commons-beanutils:jar:1.7.0
  # axion:axion:jar:1.0-M3-dev wanted version 1.0
  # org.apache.sshd:sshd-core:jar:0.8.0 wanted version 1.1.1
  # org.apache.httpcomponents:httpclient:jar:4.3.5 wanted version 1.1.3
  # org.springframework:spring-context:jar:2.0.5 wanted version 1.1
  # org.springframework:spring-web:jar:2.0.5 wanted version 1.1
  # net.sf.ehcache:ehcache-core:jar:2.2.0 wanted version 1.0.4
  # org.slf4j:slf4j-jcl:jar:1.6.1 wanted version 1.1.1
  # groovy:groovy:jar:1.0-jsr-03 got requested version
  # org.springframework:spring-core:jar:2.0.5 wanted version 1.1
  # org.springframework:spring-jmx:jar:2.0.5 wanted version 1.1
  native.maven_jar(
      name = "commons_logging_commons_logging",
      artifact = "commons-logging:commons-logging:1.0.3",
      sha1 = "760c711c71588bc273d3e56d196d720a7678cd93",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_plexus_locators",
      artifact = "org.sonatype.sisu.inject:guice-plexus-locators:2.1.1",
      sha1 = "0ed04204b3e9af293fc7b511382dc309d665967e",
  )


  # org.sonatype.sisu.inject:guice-plexus-scanners:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-locators:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-converters:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-metadata:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-locators:jar:2.1.1
  # org.sonatype.sisu:sisu-inject-bean:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-inject:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-reflect:jar:2.1.1 got requested version
  # org.sonatype.sisu:sisu-inject-plexus:bundle:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-shim:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-plexus-binders:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-containers:jar:2.1.1 got requested version
  # org.sonatype.sisu.inject:guice-bean-scanners:jar:2.1.1 got requested version
  native.maven_jar(
      name = "org_sonatype_sisu_inject_guice_bean_binders",
      artifact = "org.sonatype.sisu.inject:guice-bean-binders:2.1.1",
      sha1 = "acd05ff5125797bce05259cc61d14e1201215fde",
  )


  # org.apache.mina:mina-transport-apr:bundle:2.0.5 got requested version
  # org.apache.mina:mina-filter-compression:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-ognl:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-jmx:bundle:2.0.5 got requested version
  # org.apache.mina:mina-integration-beans:bundle:2.0.5
  # org.apache.mina:mina-statemachine:bundle:2.0.5 got requested version
  # org.apache.mina:mina-core:bundle:2.0.5 got requested version
  native.maven_jar(
      name = "org_apache_mina_mina_integration_ognl",
      artifact = "org.apache.mina:mina-integration-ognl:2.0.5",
      sha1 = "e41e3f650f8e2a924dc96fdba11ea8f2584d7fa5",
  )


  # pmd:pmd:jar:4.3
  native.maven_jar(
      name = "jaxen_jaxen",
      artifact = "jaxen:jaxen:1.1.1",
      sha1 = "9f5d3c5974dbe5cf69c2c2ec7d8a4eb6e0fce7f9",
  )


  # groovy:groovy:jar:1.0-jsr-03
  native.maven_jar(
      name = "asm_asm_analysis",
      artifact = "asm:asm-analysis:2.0",
      sha1 = "f3bd9c9bee83708231eb97d205b4e43153e3f97f",
  )


  # org.jboss.weld:weld-api:jar:1.0 got requested version
  # org.jboss.weld:weld-spi:jar:1.0 got requested version
  # javax.enterprise:cdi-api:jar:1.0
  native.maven_jar(
      name = "javax_jms_jms",
      artifact = "javax.jms:jms:1.1",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "5e106d07e523fb6d40cf086b9b413268f6302f26",
  )


  # javax.xml.ws:jaxws-api:jar:2.1
  native.maven_jar(
      name = "javax_jws_jsr181_api",
      artifact = "javax.jws:jsr181-api:1.0-MR1",
      repository = "http://repository.jboss.org/maven2/",
      sha1 = "401cc1d0e5f0d8f4d0532a54928ceaa27ec21258",
  )


  # org.apache.maven:maven-model-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.3.9 got requested version
  # org.apache.maven:maven-builder-support:jar:3.3.9
  # org.apache.maven:maven-compat:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings:jar:3.3.9 got requested version
  # org.apache.maven:maven-core:jar:3.3.9 got requested version
  # org.apache.maven:maven-model:jar:3.3.9 got requested version
  # org.apache.maven:maven-settings-builder:jar:3.3.9 got requested version
  # org.apache.maven:maven-artifact:jar:3.3.9 got requested version
  # org.apache.maven:maven-plugin-api:jar:3.3.9 got requested version
  # org.apache.maven:maven-embedder:jar:3.3.9 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.3.9 got requested version
  native.maven_jar(
      name = "org_apache_commons_commons_lang3",
      artifact = "org.apache.commons:commons-lang3:3.4",
      sha1 = "5fe28b9518e58819180a43a850fbc0dd24b7c050",
  )


  # org.apache.maven:maven-artifact:jar:3.3.9 wanted version 18.0
  # com.google.truth:truth:jar:0.30 wanted version 19.0
  native.maven_jar(
      name = "com_google_guava_guava",
      artifact = "com.google.guava:guava:20.0",
  )


  # org.mortbay.jetty:jetty:jar:6.1.26
  native.maven_jar(
      name = "org_mortbay_jetty_servlet_api",
      artifact = "org.mortbay.jetty:servlet-api:2.5-20081211",
      sha1 = "22bff70037e1e6fa7e6413149489552ee2064702",
  )


  # groovy:groovy:jar:1.0-jsr-03
  # jmock:jmock-cglib:jar:1.0.1 got requested version
  # com.thoughtworks.qdox:qdox:jar:1.6.3 wanted version 1.0.0
  native.maven_jar(
      name = "jmock_jmock",
      artifact = "jmock:jmock:1.0.1",
      sha1 = "87a39d1a62ea94be5453ecdbb97cd81c978622d3",
  )




def generated_java_libraries():
  native.java_library(
      name = "org_apache_maven_maven_plugin_tools_api",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_plugin_tools_api//jar"],
  )


  native.java_library(
      name = "aopalliance_aopalliance",
      visibility = ["//visibility:public"],
      exports = ["@aopalliance_aopalliance//jar"],
  )


  native.java_library(
      name = "org_apache_mina_mina_filter_compression",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_filter_compression//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "javax_annotation_jsr250_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_annotation_jsr250_api//jar"],
  )


  native.java_library(
      name = "org_eclipse_aether_aether_connector_basic",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_aether_aether_connector_basic//jar"],
      runtime_deps = [
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_guice",
      ],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_file",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_file//jar"],
      runtime_deps = [
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":junit_junit",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_mortbay_jetty_jetty",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
      ],
  )


  native.java_library(
      name = "ant_ant",
      visibility = ["//visibility:public"],
      exports = ["@ant_ant//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_repository_metadata",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_repository_metadata//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_sonatype_plexus_plexus_sec_dispatcher",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_plexus_plexus_sec_dispatcher//jar"],
      runtime_deps = [
          ":javax_inject_javax_inject",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "com_google_truth_truth",
      visibility = ["//visibility:public"],
      exports = ["@com_google_truth_truth//jar"],
      runtime_deps = [
          ":com_google_errorprone_error_prone_annotations",
          ":com_google_guava_guava",
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "net_java_dev_jna_jna_platform",
      visibility = ["//visibility:public"],
      exports = ["@net_java_dev_jna_jna_platform//jar"],
      runtime_deps = [
          ":net_java_dev_jna_jna",
      ],
  )


  native.java_library(
      name = "com_google_inject_guice",
      visibility = ["//visibility:public"],
      exports = ["@com_google_inject_guice//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":cglib_cglib",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":junit_junit",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_component_annotations",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_component_annotations//jar"],
      runtime_deps = [
          ":com_google_collections_google_collections",
          ":com_thoughtworks_qdox_qdox",
          ":javax_inject_javax_inject",
          ":jdom_jdom",
          ":junit_junit",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_project",
          ":org_apache_xbean_xbean_reflect",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "org_apache_mina_mina_core",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_core//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "javax_validation_validation_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_validation_validation_api//jar"],
  )


  native.java_library(
      name = "org_apache_felix_org_apache_felix_framework",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_felix_org_apache_felix_framework//jar"],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_interactivity_api",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_interactivity_api//jar"],
      runtime_deps = [
          ":javax_inject_javax_inject",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "groovy_groovy",
      visibility = ["//visibility:public"],
      exports = ["@groovy_groovy//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bsf_bsf",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":classworlds_classworlds",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_primitives_commons_primitives",
          ":javacc_javacc",
          ":javax_servlet_servlet_api",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":openejb_openejb_loader",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_provider_api",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_provider_api//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":bouncycastle_bcprov_jdk15",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_codec_commons_codec",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_inject_javax_inject",
          ":javax_mail_mail",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "org_slf4j_slf4j_jcl",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_slf4j_jcl//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":commons_logging_commons_logging",
          ":log4j_log4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
      ],
  )


  native.java_library(
      name = "javax_activation_activation",
      visibility = ["//visibility:public"],
      exports = ["@javax_activation_activation//jar"],
  )


  native.java_library(
      name = "org_ow2_asm_asm_tree",
      visibility = ["//visibility:public"],
      exports = ["@org_ow2_asm_asm_tree//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "org_mockito_mockito_all",
      visibility = ["//visibility:public"],
      exports = ["@org_mockito_mockito_all//jar"],
  )


  native.java_library(
      name = "ant_ant_junit",
      visibility = ["//visibility:public"],
      exports = ["@ant_ant_junit//jar"],
  )


  native.java_library(
      name = "org_slf4j_slf4j_simple",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_slf4j_simple//jar"],
  )


  native.java_library(
      name = "commons_jxpath_commons_jxpath",
      visibility = ["//visibility:public"],
      exports = ["@commons_jxpath_commons_jxpath//jar"],
  )


  native.java_library(
      name = "javax_xml_ws_jaxws_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_xml_ws_jaxws_api//jar"],
      runtime_deps = [
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_jws_jsr181_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
      ],
  )


  native.java_library(
      name = "org_slf4j_slf4j_jdk14",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_slf4j_jdk14//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":log4j_log4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_settings_builder",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_settings_builder//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "regexp_regexp",
      visibility = ["//visibility:public"],
      exports = ["@regexp_regexp//jar"],
  )


  native.java_library(
      name = "log4j_log4j",
      visibility = ["//visibility:public"],
      exports = ["@log4j_log4j//jar"],
  )


  native.java_library(
      name = "javax_servlet_jsp_jsp_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_servlet_jsp_jsp_api//jar"],
  )


  native.java_library(
      name = "javax_transaction_jta",
      visibility = ["//visibility:public"],
      exports = ["@javax_transaction_jta//jar"],
  )


  native.java_library(
      name = "org_mortbay_jetty_jetty_util",
      visibility = ["//visibility:public"],
      exports = ["@org_mortbay_jetty_jetty_util//jar"],
      runtime_deps = [
          ":ant_ant",
          ":geronimo_spec_geronimo_spec_jta",
          ":javax_activation_activation",
          ":javax_mail_mail",
          ":junit_junit",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_simple",
      ],
  )


  native.java_library(
      name = "jdom_jdom",
      visibility = ["//visibility:public"],
      exports = ["@jdom_jdom//jar"],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_ssh_common",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_ssh_common//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ch_qos_cal10n_cal10n_api",
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":geronimo_spec_geronimo_spec_jta",
          ":javax_activation_activation",
          ":javax_inject_javax_inject",
          ":javax_mail_mail",
          ":junit_junit",
          ":log4j_log4j",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "javax_inject_javax_inject_tck",
      visibility = ["//visibility:public"],
      exports = ["@javax_inject_javax_inject_tck//jar"],
      runtime_deps = [
          ":javax_inject_javax_inject",
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "org_slf4j_slf4j_api",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_slf4j_api//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":log4j_log4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
      ],
  )


  native.java_library(
      name = "org_mortbay_jetty_jetty",
      visibility = ["//visibility:public"],
      exports = ["@org_mortbay_jetty_jetty//jar"],
      runtime_deps = [
          ":ant_ant",
          ":geronimo_spec_geronimo_spec_jta",
          ":javax_activation_activation",
          ":javax_mail_mail",
          ":junit_junit",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_simple",
      ],
  )


  native.java_library(
      name = "asm_asm_util",
      visibility = ["//visibility:public"],
      exports = ["@asm_asm_util//jar"],
  )


  native.java_library(
      name = "qdox_qdox",
      visibility = ["//visibility:public"],
      exports = ["@qdox_qdox//jar"],
  )


  native.java_library(
      name = "javax_enterprise_cdi_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_enterprise_cdi_api//jar"],
      runtime_deps = [
          ":commons_httpclient_commons_httpclient",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":junit_junit",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_testng_testng",
      ],
  )


  native.java_library(
      name = "jmock_jmock_cglib",
      visibility = ["//visibility:public"],
      exports = ["@jmock_jmock_cglib//jar"],
      runtime_deps = [
          ":cglib_cglib_full",
          ":jmock_jmock",
      ],
  )


  native.java_library(
      name = "org_apache_httpcomponents_httpclient",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_httpcomponents_httpclient//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":commons_codec_commons_codec",
          ":commons_logging_commons_logging",
          ":log4j_log4j",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jsr107cache_jsr107cache",
          ":org_apache_httpcomponents_httpcore",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":spy_spymemcached",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_cli",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_cli//jar"],
      runtime_deps = [
          ":commons_cli_commons_cli",
          ":javax_inject_javax_inject",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "commons_httpclient_commons_httpclient",
      visibility = ["//visibility:public"],
      exports = ["@commons_httpclient_commons_httpclient//jar"],
  )


  native.java_library(
      name = "xpp3_xpp3",
      visibility = ["//visibility:public"],
      exports = ["@xpp3_xpp3//jar"],
  )


  native.java_library(
      name = "org_springframework_spring_beans",
      visibility = ["//visibility:public"],
      exports = ["@org_springframework_spring_beans//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging",
          ":org_springframework_spring_core",
      ],
  )


  native.java_library(
      name = "org_eclipse_aether_aether_api",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_aether_aether_api//jar"],
      runtime_deps = [
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_guice",
      ],
  )


  native.java_library(
      name = "xerces_xerces",
      visibility = ["//visibility:public"],
      exports = ["@xerces_xerces//jar"],
  )


  native.java_library(
      name = "javax_mail_mail",
      visibility = ["//visibility:public"],
      exports = ["@javax_mail_mail//jar"],
      runtime_deps = [
          ":javax_activation_activation",
      ],
  )


  native.java_library(
      name = "javax_faces_jsf_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_faces_jsf_api//jar"],
  )


  native.java_library(
      name = "org_ow2_asm_asm",
      visibility = ["//visibility:public"],
      exports = ["@org_ow2_asm_asm//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "org_apache_xbean_xbean_spring",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_xbean_xbean_spring//jar"],
      runtime_deps = [
          ":ant_ant",
          ":cglib_cglib_nodep",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_logging_commons_logging",
          ":groovy_groovy",
          ":mx4j_mx4j",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
      ],
  )


  native.java_library(
      name = "com_google_collections_google_collections",
      visibility = ["//visibility:public"],
      exports = ["@com_google_collections_google_collections//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_containers",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_containers//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "net_sf_jpam_jpam",
      visibility = ["//visibility:public"],
      exports = ["@net_sf_jpam_jpam//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_scanners",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_scanners//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_project",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_project//jar"],
  )


  native.java_library(
      name = "org_jsoup_jsoup",
      visibility = ["//visibility:public"],
      exports = ["@org_jsoup_jsoup//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_compat",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_compat//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_eclipse_aether_aether_impl",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_aether_aether_impl//jar"],
      runtime_deps = [
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_guice",
      ],
  )


  native.java_library(
      name = "spy_spymemcached",
      visibility = ["//visibility:public"],
      exports = ["@spy_spymemcached//jar"],
  )


  native.java_library(
      name = "commons_primitives_commons_primitives",
      visibility = ["//visibility:public"],
      exports = ["@commons_primitives_commons_primitives//jar"],
  )


  native.java_library(
      name = "org_eclipse_sisu_org_eclipse_sisu_plexus",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_sisu_org_eclipse_sisu_plexus//jar"],
      runtime_deps = [
          ":commons_httpclient_commons_httpclient",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":junit_junit",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_testng_testng",
      ],
  )


  native.java_library(
      name = "net_java_dev_jna_jna",
      visibility = ["//visibility:public"],
      exports = ["@net_java_dev_jna_jna//jar"],
  )


  native.java_library(
      name = "javax_inject_javax_inject",
      visibility = ["//visibility:public"],
      exports = ["@javax_inject_javax_inject//jar"],
  )


  native.java_library(
      name = "org_ow2_asm_asm_xml",
      visibility = ["//visibility:public"],
      exports = ["@org_ow2_asm_asm_xml//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "org_springframework_spring_jmx",
      visibility = ["//visibility:public"],
      exports = ["@org_springframework_spring_jmx//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":commons_logging_commons_logging",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
      ],
  )


  native.java_library(
      name = "com_thoughtworks_qdox_qdox",
      visibility = ["//visibility:public"],
      exports = ["@com_thoughtworks_qdox_qdox//jar"],
      runtime_deps = [
          ":ant_ant",
          ":jmock_jmock",
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "mx4j_mx4j",
      visibility = ["//visibility:public"],
      exports = ["@mx4j_mx4j//jar"],
  )


  native.java_library(
      name = "org_apache_mina_mina_statemachine",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_statemachine//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "javax_xml_bind_jaxb_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_xml_bind_jaxb_api//jar"],
      runtime_deps = [
          ":javax_activation_activation",
          ":javax_xml_stream_stax_api",
      ],
  )


  native.java_library(
      name = "asm_asm_tree",
      visibility = ["//visibility:public"],
      exports = ["@asm_asm_tree//jar"],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_container_default",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_container_default//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bsf_bsf",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_collections_google_collections",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javax_inject_javax_inject",
          ":javax_servlet_servlet_api",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":openejb_openejb_loader",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_project",
          ":org_apache_xbean_xbean_reflect",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_springframework_spring_context",
      visibility = ["//visibility:public"],
      exports = ["@org_springframework_spring_context//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":commons_logging_commons_logging",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_core",
      ],
  )


  native.java_library(
      name = "org_apache_mina_mina_integration_jmx",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_integration_jmx//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "javax_servlet_servlet_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_servlet_servlet_api//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_plugin_api",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_plugin_api//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "xstream_xstream",
      visibility = ["//visibility:public"],
      exports = ["@xstream_xstream//jar"],
  )


  native.java_library(
      name = "commons_cli_commons_cli",
      visibility = ["//visibility:public"],
      exports = ["@commons_cli_commons_cli//jar"],
      runtime_deps = [
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_embedder",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_embedder//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_inject",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_inject//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "tomcat_tomcat_apr",
      visibility = ["//visibility:public"],
      exports = ["@tomcat_tomcat_apr//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging_api",
      ],
  )


  native.java_library(
      name = "com_jcraft_jsch",
      visibility = ["//visibility:public"],
      exports = ["@com_jcraft_jsch//jar"],
  )


  native.java_library(
      name = "javacc_javacc",
      visibility = ["//visibility:public"],
      exports = ["@javacc_javacc//jar"],
  )


  native.java_library(
      name = "org_osgi_org_osgi_compendium",
      visibility = ["//visibility:public"],
      exports = ["@org_osgi_org_osgi_compendium//jar"],
  )


  native.java_library(
      name = "bouncycastle_bcprov_jdk15",
      visibility = ["//visibility:public"],
      exports = ["@bouncycastle_bcprov_jdk15//jar"],
  )


  native.java_library(
      name = "org_jboss_weld_weld_spi",
      visibility = ["//visibility:public"],
      exports = ["@org_jboss_weld_weld_spi//jar"],
      runtime_deps = [
          ":commons_httpclient_commons_httpclient",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_testng_testng",
      ],
  )


  native.java_library(
      name = "org_eclipse_aether_aether_spi",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_aether_aether_spi//jar"],
      runtime_deps = [
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_guice",
      ],
  )


  native.java_library(
      name = "org_eclipse_aether_aether_transport_wagon",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_aether_aether_transport_wagon//jar"],
      runtime_deps = [
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_guice",
      ],
  )


  native.java_library(
      name = "org_ow2_asm_asm_analysis",
      visibility = ["//visibility:public"],
      exports = ["@org_ow2_asm_asm_analysis//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_converters",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_converters//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_shim",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_shim//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "net_sf_ehcache_ehcache_core",
      visibility = ["//visibility:public"],
      exports = ["@net_sf_ehcache_ehcache_core//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging",
          ":net_sf_jsr107cache_jsr107cache",
          ":org_slf4j_slf4j_api",
      ],
  )


  native.java_library(
      name = "antlr_antlr",
      visibility = ["//visibility:public"],
      exports = ["@antlr_antlr//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_sisu_inject_plexus",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_sisu_inject_plexus//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bsf_bsf",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_collections_google_collections",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javax_inject_javax_inject",
          ":javax_servlet_servlet_api",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":openejb_openejb_loader",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_project",
          ":org_apache_xbean_xbean_reflect",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "commons_beanutils_commons_beanutils",
      visibility = ["//visibility:public"],
      exports = ["@commons_beanutils_commons_beanutils//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging",
      ],
  )


  native.java_library(
      name = "bsf_bsf",
      visibility = ["//visibility:public"],
      exports = ["@bsf_bsf//jar"],
  )


  native.java_library(
      name = "javax_xml_stream_stax_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_xml_stream_stax_api//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_builder_support",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_builder_support//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "commons_io_commons_io",
      visibility = ["//visibility:public"],
      exports = ["@commons_io_commons_io//jar"],
  )


  native.java_library(
      name = "commons_codec_commons_codec",
      visibility = ["//visibility:public"],
      exports = ["@commons_codec_commons_codec//jar"],
  )


  native.java_library(
      name = "org_easymock_easymock",
      visibility = ["//visibility:public"],
      exports = ["@org_easymock_easymock//jar"],
      runtime_deps = [
          ":cglib_cglib_nodep",
          ":junit_junit",
          ":org_objenesis_objenesis",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_component_metadata",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_component_metadata//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bsf_bsf",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_collections_google_collections",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javax_inject_javax_inject",
          ":javax_servlet_servlet_api",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":openejb_openejb_loader",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_project",
          ":org_apache_xbean_xbean_reflect",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_sonatype_plexus_plexus_cipher",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_plexus_plexus_cipher//jar"],
      runtime_deps = [
          ":javax_inject_javax_inject",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "xml_apis_xml_apis",
      visibility = ["//visibility:public"],
      exports = ["@xml_apis_xml_apis//jar"],
  )


  native.java_library(
      name = "asm_asm",
      visibility = ["//visibility:public"],
      exports = ["@asm_asm//jar"],
  )


  native.java_library(
      name = "com_google_guava_guava_testlib",
      visibility = ["//visibility:public"],
      exports = ["@com_google_guava_guava_testlib//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_artifact",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_artifact//jar"],
      runtime_deps = [
          ":com_google_guava_guava",
          ":com_google_inject_guice",
          ":commons_cli_commons_cli",
          ":commons_jxpath_commons_jxpath",
          ":org_apache_commons_commons_lang3",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
      ],
  )


  native.java_library(
      name = "org_jboss_weld_weld_api",
      visibility = ["//visibility:public"],
      exports = ["@org_jboss_weld_weld_api//jar"],
      runtime_deps = [
          ":commons_httpclient_commons_httpclient",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_testng_testng",
      ],
  )


  native.java_library(
      name = "commons_logging_commons_logging_api",
      visibility = ["//visibility:public"],
      exports = ["@commons_logging_commons_logging_api//jar"],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_http_shared",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_http_shared//jar"],
      runtime_deps = [
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":junit_junit",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
      ],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_http",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_http//jar"],
      runtime_deps = [
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":junit_junit",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
      ],
  )


  native.java_library(
      name = "radeox_radeox_oro",
      visibility = ["//visibility:public"],
      exports = ["@radeox_radeox_oro//jar"],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_utils",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_utils//jar"],
      runtime_deps = [
          ":javax_inject_javax_inject",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_converters",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_converters//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "cglib_cglib_full",
      visibility = ["//visibility:public"],
      exports = ["@cglib_cglib_full//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_scanners",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_scanners//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "net_sf_jsr107cache_jsr107cache",
      visibility = ["//visibility:public"],
      exports = ["@net_sf_jsr107cache_jsr107cache//jar"],
  )


  native.java_library(
      name = "mockobjects_mockobjects_core",
      visibility = ["//visibility:public"],
      exports = ["@mockobjects_mockobjects_core//jar"],
  )


  native.java_library(
      name = "org_springframework_spring_core",
      visibility = ["//visibility:public"],
      exports = ["@org_springframework_spring_core//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging",
      ],
  )


  native.java_library(
      name = "nekohtml_nekohtml",
      visibility = ["//visibility:public"],
      exports = ["@nekohtml_nekohtml//jar"],
  )


  native.java_library(
      name = "axion_axion",
      visibility = ["//visibility:public"],
      exports = ["@axion_axion//jar"],
      runtime_deps = [
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_logging_commons_logging",
          ":commons_primitives_commons_primitives",
          ":javacc_javacc",
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "org_apache_httpcomponents_httpcore",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_httpcomponents_httpcore//jar"],
  )


  native.java_library(
      name = "cglib_cglib_nodep",
      visibility = ["//visibility:public"],
      exports = ["@cglib_cglib_nodep//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_cglib",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_cglib//jar"],
      runtime_deps = [
          ":asm_asm",
      ],
  )


  native.java_library(
      name = "radeox_radeox",
      visibility = ["//visibility:public"],
      exports = ["@radeox_radeox//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_aether_provider",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_aether_provider//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_apache_mina_mina_transport_apr",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_transport_apr//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_interpolation",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_interpolation//jar"],
      runtime_deps = [
          ":javax_inject_javax_inject",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "ant_ant_launcher",
      visibility = ["//visibility:public"],
      exports = ["@ant_ant_launcher//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_settings",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_settings//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_eclipse_aether_aether_util",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_aether_aether_util//jar"],
      runtime_deps = [
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_sisu_guice",
      ],
  )


  native.java_library(
      name = "org_osgi_org_osgi_core",
      visibility = ["//visibility:public"],
      exports = ["@org_osgi_org_osgi_core//jar"],
  )


  native.java_library(
      name = "org_slf4j_jcl_over_slf4j",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_jcl_over_slf4j//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":log4j_log4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
      ],
  )


  native.java_library(
      name = "org_apache_mina_mina_integration_beans",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_integration_beans//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "javax_servlet_jstl",
      visibility = ["//visibility:public"],
      exports = ["@javax_servlet_jstl//jar"],
  )


  native.java_library(
      name = "org_springframework_spring",
      visibility = ["//visibility:public"],
      exports = ["@org_springframework_spring//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_sisu_guice",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_sisu_guice//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":org_sonatype_sisu_inject_cglib",
      ],
  )


  native.java_library(
      name = "ognl_ognl",
      visibility = ["//visibility:public"],
      exports = ["@ognl_ognl//jar"],
      runtime_deps = [
          ":javassist_javassist",
      ],
  )


  native.java_library(
      name = "org_springframework_spring_web",
      visibility = ["//visibility:public"],
      exports = ["@org_springframework_spring_web//jar"],
      runtime_deps = [
          ":commons_logging_commons_logging",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
      ],
  )


  native.java_library(
      name = "org_testng_testng",
      visibility = ["//visibility:public"],
      exports = ["@org_testng_testng//jar"],
      runtime_deps = [
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "org_codehaus_plexus_plexus_classworlds",
      visibility = ["//visibility:public"],
      exports = ["@org_codehaus_plexus_plexus_classworlds//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":javax_inject_javax_inject",
          ":log4j_log4j",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "classworlds_classworlds",
      visibility = ["//visibility:public"],
      exports = ["@classworlds_classworlds//jar"],
  )


  native.java_library(
      name = "commons_lang_commons_lang",
      visibility = ["//visibility:public"],
      exports = ["@commons_lang_commons_lang//jar"],
      runtime_deps = [
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_provider_test",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_provider_test//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":bouncycastle_bcprov_jdk15",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_codec_commons_codec",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_inject_javax_inject",
          ":javax_mail_mail",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "com_google_code_findbugs_jsr305",
      visibility = ["//visibility:public"],
      exports = ["@com_google_code_findbugs_jsr305//jar"],
  )


  native.java_library(
      name = "org_apache_maven_maven_model_builder",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_model_builder//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_ow2_asm_asm_util",
      visibility = ["//visibility:public"],
      exports = ["@org_ow2_asm_asm_util//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "ch_ethz_ganymed_ganymed_ssh2",
      visibility = ["//visibility:public"],
      exports = ["@ch_ethz_ganymed_ganymed_ssh2//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_binders",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_binders//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_model",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_model//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "com_google_errorprone_error_prone_annotations",
      visibility = ["//visibility:public"],
      exports = ["@com_google_errorprone_error_prone_annotations//jar"],
  )


  native.java_library(
      name = "openejb_openejb_loader",
      visibility = ["//visibility:public"],
      exports = ["@openejb_openejb_loader//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_locators",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_locators//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "cglib_cglib",
      visibility = ["//visibility:public"],
      exports = ["@cglib_cglib//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
      ],
  )


  native.java_library(
      name = "org_apache_maven_maven_core",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_maven_core//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bouncycastle_bcprov_jdk15",
          ":bsf_bsf",
          ":cglib_cglib",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":classworlds_classworlds",
          ":com_google_code_findbugs_jsr305",
          ":com_google_collections_google_collections",
          ":com_google_guava_guava",
          ":com_google_guava_guava_testlib",
          ":com_google_inject_guice",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_jxpath_commons_jxpath",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_annotation_jsr250_api",
          ":javax_enterprise_cdi_api",
          ":javax_faces_jsf_api",
          ":javax_inject_javax_inject",
          ":javax_inject_javax_inject_tck",
          ":javax_jms_jms",
          ":javax_jws_jsr181_api",
          ":javax_mail_mail",
          ":javax_persistence_persistence_api",
          ":javax_servlet_jsp_jsp_api",
          ":javax_servlet_jstl",
          ":javax_servlet_servlet_api",
          ":javax_transaction_jta",
          ":javax_validation_validation_api",
          ":javax_xml_bind_jaxb_api",
          ":javax_xml_soap_saaj_api",
          ":javax_xml_stream_stax_api",
          ":javax_xml_ws_jaxws_api",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":jdom_jdom",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":openejb_openejb_loader",
          ":org_apache_commons_commons_lang3",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_aether_provider",
          ":org_apache_maven_maven_artifact",
          ":org_apache_maven_maven_builder_support",
          ":org_apache_maven_maven_compat",
          ":org_apache_maven_maven_core",
          ":org_apache_maven_maven_embedder",
          ":org_apache_maven_maven_model",
          ":org_apache_maven_maven_model_builder",
          ":org_apache_maven_maven_plugin_api",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_maven_project",
          ":org_apache_maven_maven_repository_metadata",
          ":org_apache_maven_maven_settings",
          ":org_apache_maven_maven_settings_builder",
          ":org_apache_maven_wagon_wagon_file",
          ":org_apache_maven_wagon_wagon_http",
          ":org_apache_maven_wagon_wagon_http_shared",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_reflect",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_cli",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_component_metadata",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_interpolation",
          ":org_codehaus_plexus_plexus_utils",
          ":org_easymock_easymock",
          ":org_eclipse_aether_aether_api",
          ":org_eclipse_aether_aether_connector_basic",
          ":org_eclipse_aether_aether_impl",
          ":org_eclipse_aether_aether_spi",
          ":org_eclipse_aether_aether_transport_wagon",
          ":org_eclipse_aether_aether_util",
          ":org_eclipse_sisu_org_eclipse_sisu_inject",
          ":org_eclipse_sisu_org_eclipse_sisu_plexus",
          ":org_jboss_weld_weld_api",
          ":org_jboss_weld_weld_spi",
          ":org_jsoup_jsoup",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_objenesis_objenesis",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_plexus_plexus_cipher",
          ":org_sonatype_plexus_plexus_sec_dispatcher",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":org_testng_testng",
          ":pmd_pmd",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_metadata",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_metadata//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "org_objenesis_objenesis",
      visibility = ["//visibility:public"],
      exports = ["@org_objenesis_objenesis//jar"],
  )


  native.java_library(
      name = "pmd_pmd",
      visibility = ["//visibility:public"],
      exports = ["@pmd_pmd//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":jaxen_jaxen",
          ":junit_junit",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_tck",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_tck//jar"],
  )


  native.java_library(
      name = "org_ow2_asm_asm_commons",
      visibility = ["//visibility:public"],
      exports = ["@org_ow2_asm_asm_commons//jar"],
      runtime_deps = [
          ":org_ow2_asm_asm",
          ":org_ow2_asm_asm_analysis",
          ":org_ow2_asm_asm_commons",
          ":org_ow2_asm_asm_tree",
          ":org_ow2_asm_asm_util",
          ":org_ow2_asm_asm_xml",
      ],
  )


  native.java_library(
      name = "javax_persistence_persistence_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_persistence_persistence_api//jar"],
  )


  native.java_library(
      name = "org_apache_maven_wagon_wagon_ssh_common_test",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_maven_wagon_wagon_ssh_common_test//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":bouncycastle_bcprov_jdk15",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":ch_qos_cal10n_cal10n_api",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_codec_commons_codec",
          ":commons_httpclient_commons_httpclient",
          ":commons_io_commons_io",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":geronimo_spec_geronimo_spec_jta",
          ":groovy_groovy",
          ":javassist_javassist",
          ":javax_activation_activation",
          ":javax_inject_javax_inject",
          ":javax_mail_mail",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":net_java_dev_jna_jna",
          ":net_java_dev_jna_jna_platform",
          ":net_sf_ehcache_ehcache_core",
          ":net_sf_jpam_jpam",
          ":net_sf_jsr107cache_jsr107cache",
          ":ognl_ognl",
          ":org_apache_httpcomponents_httpclient",
          ":org_apache_httpcomponents_httpcore",
          ":org_apache_maven_maven_plugin_tools_api",
          ":org_apache_maven_wagon_wagon_provider_api",
          ":org_apache_maven_wagon_wagon_provider_test",
          ":org_apache_maven_wagon_wagon_ssh_common",
          ":org_apache_maven_wagon_wagon_ssh_common_test",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_sshd_sshd_core",
          ":org_apache_xbean_xbean_spring",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_container_default",
          ":org_codehaus_plexus_plexus_interactivity_api",
          ":org_codehaus_plexus_plexus_utils",
          ":org_mortbay_jetty_jetty",
          ":org_mortbay_jetty_jetty_util",
          ":org_mortbay_jetty_servlet_api",
          ":org_slf4j_jcl104_over_slf4j",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jcl",
          ":org_slf4j_slf4j_jdk14",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_sonatype_sisu_sisu_inject_plexus",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":spy_spymemcached",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "geronimo_spec_geronimo_spec_jta",
      visibility = ["//visibility:public"],
      exports = ["@geronimo_spec_geronimo_spec_jta//jar"],
  )


  native.java_library(
      name = "asm_asm_attrs",
      visibility = ["//visibility:public"],
      exports = ["@asm_asm_attrs//jar"],
  )


  native.java_library(
      name = "tonic_jarjar",
      visibility = ["//visibility:public"],
      exports = ["@tonic_jarjar//jar"],
  )


  native.java_library(
      name = "org_slf4j_slf4j_log4j12",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_slf4j_log4j12//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
          ":log4j_log4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_jdk14",
      ],
  )


  native.java_library(
      name = "org_apache_xbean_xbean_reflect",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_xbean_xbean_reflect//jar"],
      runtime_deps = [
          ":ant_ant",
          ":ant_ant_junit",
          ":ant_ant_launcher",
          ":antlr_antlr",
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":asm_asm_analysis",
          ":asm_asm_attrs",
          ":asm_asm_tree",
          ":asm_asm_util",
          ":axion_axion",
          ":bsf_bsf",
          ":cglib_cglib_full",
          ":cglib_cglib_nodep",
          ":classworlds_classworlds",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_cli_commons_cli",
          ":commons_codec_commons_codec",
          ":commons_collections_commons_collections",
          ":commons_httpclient_commons_httpclient",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":commons_primitives_commons_primitives",
          ":groovy_groovy",
          ":javacc_javacc",
          ":javax_servlet_servlet_api",
          ":jmock_jmock",
          ":jmock_jmock_cglib",
          ":junit_junit",
          ":log4j_log4j",
          ":mockobjects_mockobjects_core",
          ":mx4j_mx4j",
          ":nekohtml_nekohtml",
          ":openejb_openejb_loader",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_core",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":qdox_qdox",
          ":radeox_radeox",
          ":radeox_radeox_oro",
          ":regexp_regexp",
          ":tonic_jarjar",
          ":xerces_xerces",
          ":xml_apis_xml_apis",
          ":xpp3_xpp3",
          ":xstream_xstream",
      ],
  )


  native.java_library(
      name = "org_eclipse_sisu_org_eclipse_sisu_inject",
      visibility = ["//visibility:public"],
      exports = ["@org_eclipse_sisu_org_eclipse_sisu_inject//jar"],
  )


  native.java_library(
      name = "javassist_javassist",
      visibility = ["//visibility:public"],
      exports = ["@javassist_javassist//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_sisu_inject_bean",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_sisu_inject_bean//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_reflect",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_reflect//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "org_slf4j_jcl104_over_slf4j",
      visibility = ["//visibility:public"],
      exports = ["@org_slf4j_jcl104_over_slf4j//jar"],
  )


  native.java_library(
      name = "ch_qos_cal10n_cal10n_api",
      visibility = ["//visibility:public"],
      exports = ["@ch_qos_cal10n_cal10n_api//jar"],
      runtime_deps = [
          ":ch_qos_cal10n_cal10n_api",
      ],
  )


  native.java_library(
      name = "jboss_javassist",
      visibility = ["//visibility:public"],
      exports = ["@jboss_javassist//jar"],
  )


  native.java_library(
      name = "javax_xml_soap_saaj_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_xml_soap_saaj_api//jar"],
      runtime_deps = [
          ":javax_activation_activation",
      ],
  )


  native.java_library(
      name = "com_jcraft_jzlib",
      visibility = ["//visibility:public"],
      exports = ["@com_jcraft_jzlib//jar"],
  )


  native.java_library(
      name = "junit_junit",
      visibility = ["//visibility:public"],
      exports = ["@junit_junit//jar"],
  )


  native.java_library(
      name = "commons_collections_commons_collections",
      visibility = ["//visibility:public"],
      exports = ["@commons_collections_commons_collections//jar"],
  )


  native.java_library(
      name = "org_apache_sshd_sshd_core",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_sshd_sshd_core//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":bouncycastle_bcprov_jdk15",
          ":cglib_cglib_nodep",
          ":ch_ethz_ganymed_ganymed_ssh2",
          ":com_jcraft_jsch",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_httpclient_commons_httpclient",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":net_sf_jpam_jpam",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_slf4j_slf4j_simple",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "commons_logging_commons_logging",
      visibility = ["//visibility:public"],
      exports = ["@commons_logging_commons_logging//jar"],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_plexus_locators",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_plexus_locators//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_codehaus_plexus_plexus_classworlds",
          ":org_codehaus_plexus_plexus_component_annotations",
          ":org_codehaus_plexus_plexus_utils",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_binders",
          ":org_sonatype_sisu_inject_guice_plexus_converters",
          ":org_sonatype_sisu_inject_guice_plexus_locators",
          ":org_sonatype_sisu_inject_guice_plexus_metadata",
          ":org_sonatype_sisu_inject_guice_plexus_scanners",
          ":org_sonatype_sisu_inject_guice_plexus_shim",
          ":org_sonatype_sisu_inject_guice_plexus_tck",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
          ":org_sonatype_sisu_sisu_inject_plexus",
      ],
  )


  native.java_library(
      name = "org_sonatype_sisu_inject_guice_bean_binders",
      visibility = ["//visibility:public"],
      exports = ["@org_sonatype_sisu_inject_guice_bean_binders//jar"],
      runtime_deps = [
          ":aopalliance_aopalliance",
          ":asm_asm",
          ":javax_inject_javax_inject",
          ":junit_junit",
          ":org_apache_felix_org_apache_felix_framework",
          ":org_osgi_org_osgi_compendium",
          ":org_osgi_org_osgi_core",
          ":org_slf4j_slf4j_api",
          ":org_sonatype_sisu_inject_cglib",
          ":org_sonatype_sisu_inject_guice_bean_binders",
          ":org_sonatype_sisu_inject_guice_bean_containers",
          ":org_sonatype_sisu_inject_guice_bean_converters",
          ":org_sonatype_sisu_inject_guice_bean_inject",
          ":org_sonatype_sisu_inject_guice_bean_locators",
          ":org_sonatype_sisu_inject_guice_bean_reflect",
          ":org_sonatype_sisu_inject_guice_bean_scanners",
          ":org_sonatype_sisu_sisu_guice",
          ":org_sonatype_sisu_sisu_inject_bean",
      ],
  )


  native.java_library(
      name = "org_apache_mina_mina_integration_ognl",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_mina_mina_integration_ognl//jar"],
      runtime_deps = [
          ":ant_ant",
          ":asm_asm",
          ":cglib_cglib_nodep",
          ":com_jcraft_jzlib",
          ":com_thoughtworks_qdox_qdox",
          ":commons_beanutils_commons_beanutils",
          ":commons_lang_commons_lang",
          ":commons_logging_commons_logging",
          ":commons_logging_commons_logging_api",
          ":groovy_groovy",
          ":javassist_javassist",
          ":jaxen_jaxen",
          ":jboss_javassist",
          ":junit_junit",
          ":log4j_log4j",
          ":mx4j_mx4j",
          ":ognl_ognl",
          ":org_apache_mina_mina_core",
          ":org_apache_mina_mina_filter_compression",
          ":org_apache_mina_mina_integration_beans",
          ":org_apache_mina_mina_integration_jmx",
          ":org_apache_mina_mina_integration_ognl",
          ":org_apache_mina_mina_statemachine",
          ":org_apache_mina_mina_transport_apr",
          ":org_apache_xbean_xbean_spring",
          ":org_slf4j_jcl_over_slf4j",
          ":org_slf4j_slf4j_api",
          ":org_slf4j_slf4j_log4j12",
          ":org_springframework_spring",
          ":org_springframework_spring_beans",
          ":org_springframework_spring_context",
          ":org_springframework_spring_jmx",
          ":org_springframework_spring_web",
          ":pmd_pmd",
          ":tomcat_tomcat_apr",
      ],
  )


  native.java_library(
      name = "jaxen_jaxen",
      visibility = ["//visibility:public"],
      exports = ["@jaxen_jaxen//jar"],
  )


  native.java_library(
      name = "asm_asm_analysis",
      visibility = ["//visibility:public"],
      exports = ["@asm_asm_analysis//jar"],
  )


  native.java_library(
      name = "javax_jms_jms",
      visibility = ["//visibility:public"],
      exports = ["@javax_jms_jms//jar"],
  )


  native.java_library(
      name = "javax_jws_jsr181_api",
      visibility = ["//visibility:public"],
      exports = ["@javax_jws_jsr181_api//jar"],
  )


  native.java_library(
      name = "org_apache_commons_commons_lang3",
      visibility = ["//visibility:public"],
      exports = ["@org_apache_commons_commons_lang3//jar"],
  )


  native.java_library(
      name = "com_google_guava_guava",
      visibility = ["//visibility:public"],
      exports = ["@com_google_guava_guava//jar"],
      runtime_deps = [
          ":com_google_code_findbugs_jsr305",
      ],
  )


  native.java_library(
      name = "org_mortbay_jetty_servlet_api",
      visibility = ["//visibility:public"],
      exports = ["@org_mortbay_jetty_servlet_api//jar"],
  )


  native.java_library(
      name = "jmock_jmock",
      visibility = ["//visibility:public"],
      exports = ["@jmock_jmock//jar"],
      runtime_deps = [
          ":junit_junit",
      ],
  )


