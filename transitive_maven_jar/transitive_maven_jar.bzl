MAX_TIMEOUT = 0x7FFFFFFF

def _validate_coordinate_length(coordinate):
    parts = coordinate.split(":")
    return len(parts) >= 2 and len(parts) <= 5

def _validate_coordinates(rctx):
    coordinates = rctx.attr.artifacts
    for coord in coordinates:
        if _validate_coordinate_length(coord) == False:
            fail("Invalid coordinate %s. Generally formatted as \"group:artifact:version\"" % coord)
    return True

def _create_arguments(rctx):
    arguments = ['--artifact ' + artifact for artifact in rctx.attr.artifacts]
    return ' '.join(arguments)

def _execute(rctx, command_string):
    return rctx.execute(["bash", "-c", command_string], timeout = rctx.attr._timeout, quiet = False)

def _transitive_maven_jar_impl(rctx):
    _validate_coordinates(rctx)
    arguments = _create_arguments(rctx)

    jar_path = rctx.path(rctx.attr.generate_workspace_tool)

	# TODO: How do you execute the command
    # result = _execute(rctx, "java -jar %s %s" % (jar_path, arguments))
    result = _execute(rctx, "bazel run %s -- %s" % (rctx.attr.generate_workspace_tool, arguments))

    rctx.file('%s/BUILD' % rctx.path(''), '', False)

transitive_maven_jar = repository_rule(
        implementation = _transitive_maven_jar_impl,
        attrs = {
            "artifacts" : attr.string_list(default = [], mandatory = True),
            "_timeout" : attr.int(default = MAX_TIMEOUT),
			"generate_workspace_tool" : attr.label(executable = True, allow_files = True, cfg = "host", default = Label("@generate_workspace_tool//src:generate_workspace"))
			#TODO(petros): add support for private repositories.
        },
        local = False,
)

