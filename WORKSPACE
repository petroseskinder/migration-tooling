load('//:generate_workspace.bzl', 'generated_maven_jars')
generated_maven_jars()

load('//transitive_maven_rule:transitive_maven_rule.bzl', 'transitive_maven_jar')

# The following repository_rule specifies our the maven coordinates we depend on.
# Transitive maven jar will fetch these artifacts as well as their transitive dependencies
# TODO(petros): Figure out alternative means to group and specify targets.
# Note: The dependency resolution mechanism is very sensitive to the order artifacts are specified,
# so even if lexographic ordering may be more aesthetically pleasing, it may negatively influence our results.
transitive_maven_jar(
	name = "dependencies",
	artifacts = {
		"org.apache.maven" : [
			"maven-artifact:3.5.0"
		],
		"com.google.guava" : [
			"guava:20.0"
		],
		"org.powermock" : [
			"powermock-module-junit4:1.6.6"
		],
		"org.mockito" : [
			"mockito-all:1.9.5"
		],
		"com.google.truth" : [
			"truth:0.30"
		],
		"junit" : [
			"junit:4.12"
		],
		"code.codehaus.plexus" : [
			"plexus-component-annotations:1.7.1",
			"plexus-utils:jar:3.0.24",
			"plexus-interpolation:1.24"
		],
		"com.google.code.findbugs" : [
			"jsr305:3.0.1",
		]
	}
)

