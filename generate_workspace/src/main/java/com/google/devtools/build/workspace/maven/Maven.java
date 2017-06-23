package com.google.devtools.build.workspace.maven;

import com.google.common.collect.ImmutableList;
import org.apache.maven.repository.internal.MavenRepositorySystemUtils;
import org.eclipse.aether.DefaultRepositorySystemSession;
import org.eclipse.aether.RepositorySystem;
import org.eclipse.aether.RepositorySystemSession;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.collection.CollectRequest;
import org.eclipse.aether.collection.CollectResult;
import org.eclipse.aether.collection.DependencyCollectionException;
import org.eclipse.aether.connector.basic.BasicRepositoryConnectorFactory;
import org.eclipse.aether.graph.Dependency;
import org.eclipse.aether.impl.DefaultServiceLocator;
import org.eclipse.aether.repository.LocalRepository;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.spi.connector.RepositoryConnectorFactory;
import org.eclipse.aether.spi.connector.transport.TransporterFactory;
import org.eclipse.aether.transport.file.FileTransporterFactory;
import org.eclipse.aether.transport.http.HttpTransporterFactory;
import org.eclipse.aether.util.graph.visitor.PreorderNodeListGenerator;

import java.util.Set;

public class Maven {

  public static Set<Artifact> transitiveDependencies(Artifact artifact) {
    RepositorySystem system = newRepositorySystem();

    RepositorySystemSession session = newRepositorySystemSession(system);

    CollectRequest collectRequest = new CollectRequest();
    collectRequest.setRoot(new Dependency(artifact, ""));
    // TODO (petros): allow for other remote repositories.
    collectRequest.setRepositories(ImmutableList.of(newCentralRepository()));

    CollectResult collectResult;
    try {
      collectResult = system.collectDependencies(session, collectRequest);
    } catch (DependencyCollectionException e) {
      throw new RuntimeException(e);
    }

    // TODO (petros): Change how you traverse the nodes.
    PreorderNodeListGenerator visitor = new PreorderNodeListGenerator();
    collectResult.getRoot().accept(visitor);

    visitor.getNodes()
    return

  }


  private static RepositorySystem newRepositorySystem()
  {
    DefaultServiceLocator locator = MavenRepositorySystemUtils.newServiceLocator();
    locator.addService( RepositoryConnectorFactory.class, BasicRepositoryConnectorFactory.class );
    locator.addService( TransporterFactory.class, FileTransporterFactory.class );
    locator.addService( TransporterFactory.class, HttpTransporterFactory.class );
    return locator.getService( RepositorySystem.class );
  }

  /** Pass the output repository as an argument */
  private static DefaultRepositorySystemSession newRepositorySystemSession(RepositorySystem system )
  {
    DefaultRepositorySystemSession session = MavenRepositorySystemUtils.newSession();
    // TODO(petros): replace with where you would like to cache your output.
    LocalRepository localRepo = new LocalRepository( "target/local-repo" );
    session.setLocalRepositoryManager( system.newLocalRepositoryManager( session, localRepo ) );

    // TODO(petros): Create a listener that can be notified whenever an artifact is being downloaded.
    session.setTransferListener( null /* TODO */ );
    session.setRepositoryListener( null );

    // TODO(petros): Define a graph transformer. This will be used to resolve conflicts within
    // the dependency graph. Leaving it as null allows for dirty trees.
    session.setDependencyGraphTransformer( null );
    return session;
    //


  }

  // TODO add support for more repositories.
  private static RemoteRepository newCentralRepository()
  {
    return new RemoteRepository.Builder( "central", "default", "http://repo1.maven.org/maven2/" ).build();
  }
}
