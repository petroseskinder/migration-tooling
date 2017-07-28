package com.google.devtools.build.workspace;

import com.beust.jcommander.JCommander;
import com.beust.jcommander.ParameterException;
import com.google.devtools.build.workspace.output.AbstractWriter;
import com.google.devtools.build.workspace.output.BzlWriter;
import com.google.devtools.build.workspace.output.WorkspaceWriter;
import java.io.IOException;
import java.lang.invoke.MethodHandles;
import java.util.logging.Logger;

/**
 * Command Line Interface for the Generate Workspace tool
 */
public class Driver {

  private final static Logger logger = Logger.getLogger(
      MethodHandles.lookup().lookupClass().getName());

  public static void main(String[] args) throws InterruptedException {
    GenerateWorkspaceOptions options = new GenerateWorkspaceOptions();
    JCommander optionParser = JCommander.newBuilder().addObject(options).build();
    try {
      optionParser.parse(args);
    } catch (ParameterException e) {
      System.out.println("Unable to parse options: " + e.getLocalizedMessage());
      optionParser.usage();
      return;
    }
    if (options.mavenProjects.isEmpty() && options.artifacts.isEmpty()) {
      optionParser.usage();
      return;
    }
    try {
      GenerateWorkspace workspaceFileGenerator = new GenerateWorkspace(options.aliases);
      workspaceFileGenerator.generateFromPom(options.mavenProjects);
      workspaceFileGenerator.generateFromArtifacts(options.artifacts);

      AbstractWriter resultWriter =
          getResultWriter(args, options.outputDir, options.directToWorkspace);

      workspaceFileGenerator.writeResults(resultWriter);

    } catch (IOException e) {
      logger.severe(e.getMessage());
      System.exit(1);
    }
  }

  private static AbstractWriter getResultWriter(
      String[] args, String outputDirStr, boolean directToWorkspace) throws IOException {
    return (directToWorkspace) ?
        new WorkspaceWriter(args, outputDirStr) : new BzlWriter(args, outputDirStr);
  }
}
