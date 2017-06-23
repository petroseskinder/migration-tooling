#!/bin/bash

#java -jar ../generate_workspace_deploy.jar \
bazel run generate_workspace:generate_workspace -- \
	-a=com.google.code.findbugs:jsr305:3.0.1 \
	-a=org.codehaus.plexus:plexus-utils:jar:3.0.24 \
	-a=org.codehaus.plexus:plexus-component-annotations:1.7.1 \
	-a=org.codehaus.plexus:plexus-interpolation:1.24 \
	-a=com.google.guava:guava:20.0 \
	-a=org.apache.maven:maven-artifact:3.5.0 \
	-a=org.mockito:mockito-all:1.9.5 \
	-a=junit:junit:4.4 \
	-a=com.google.truth:truth:0.30 \
	-a=org.apache.maven:maven-aether-provider:3.0 
	#-a=org.jsoup:jsoup:1.10.1 

#	-a=org.eclipse.aether:aether-api:3.3.9 \ 
#	-a=org.eclipse.aether:aether-spi:3.3.9 \
	#-a=org.eclipse.aether:aether-util:3.3.9 \
#	-a=org.eclipse.aether:aether-connector-basic:3.3.9 \ 
#	-a=org.eclipse.aether:aether-transport-wagon:3.3.9 \
#	-a=org.apache.maven:maven-settings-builder:3.5.0 \
