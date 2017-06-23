package com.google.devtools.build.workspace.maven;


import com.google.common.collect.ImmutableList;
import org.apache.maven.repository.internal.MavenRepositorySystemUtils;
import org.eclipse.aether.DefaultRepositorySystemSession;
import org.eclipse.aether.RepositorySystem;
import org.eclipse.aether.RepositorySystemSession;
import org.eclipse.aether.artifact.Artifact;
import org.eclipse.aether.artifact.DefaultArtifact;
import org.eclipse.aether.collection.CollectRequest;
import org.eclipse.aether.connector.basic.BasicRepositoryConnectorFactory;
import org.eclipse.aether.impl.DefaultServiceLocator;
import org.eclipse.aether.repository.LocalRepository;
import org.eclipse.aether.repository.RemoteRepository;
import org.eclipse.aether.resolution.DependencyRequest;
import org.eclipse.aether.resolution.VersionRangeRequest;
import org.eclipse.aether.resolution.VersionRangeResult;
import org.eclipse.aether.spi.connector.RepositoryConnectorFactory;
import org.eclipse.aether.spi.connector.transport.TransporterFactory;
import org.eclipse.aether.transport.file.FileTransporterFactory;
import org.eclipse.aether.transport.http.HttpTransporterFactory;
import org.eclipse.aether.version.Version;

import java.util.List;

class Example {
  public static void main( String[] args )
      throws Exception
  {
    RepositorySystem system = newRepositorySystem();

    //TODO(petros): implement this
    RepositorySystemSession session = newRepositorySystemSession( system );

    //TODO(petros): Create relevant request object.
    VersionRangeRequest rangeRequest = new VersionRangeRequest();
    Artifact artifact = new DefaultArtifact( "org.eclipse.aether:aether-util:[0,)" );
    rangeRequest.setArtifact( artifact );
    // TODO(petros): This sets the various remote repositories. Figure out how to do more than central repository.
    rangeRequest.setRepositories(ImmutableList.of( newCentralRepository() ) );

    VersionRangeResult rangeResult = system.resolveVersionRange( session, rangeRequest );

    List<Version> versions = rangeResult.getVersions();

    System.out.println( "Available versions " + versions );
  }

  private static RepositorySystem newRepositorySystem() {
    /**
     * A simple service locator that is already setup with all components from this library. To acquire a complete
     * repository system, clients need to add an artifact descriptor reader, a version resolver, a version range resolver
     * and optionally some repository connector and transporter factories to access remote repositories. Once the locator is
     * fully populated, the repository system can be created like this:
     *
     * <pre>
     * RepositorySystem repoSystem = serviceLocator.getService( RepositorySystem.class );
     * </pre>
     *
     * <em>Note:</em> This class is not thread-safe. Clients are expected to create the service locator and the repository
     * system on a single thread.
     */
    DefaultServiceLocator locator = MavenRepositorySystemUtils.newServiceLocator();

    // add repository connector and transporter factories to access remote repositories.
    /**
     * A factory to create repository connectors. A repository connector is responsible for uploads/downloads to/from a
     * certain kind of remote repository. When the repository system needs a repository connector for a given remote
     * repository, it iterates the registered factories in descending order of their priority and calls
     * {@link #newInstance(RepositorySystemSession, RemoteRepository)} on them. The first connector returned by a factory
     * will then be used for the transfer.
     */
    locator.addService(RepositoryConnectorFactory.class, BasicRepositoryConnectorFactory.class);

    /**
     * A factory to create transporters. A transporter is responsible for uploads/downloads to/from a remote repository
     * using a particular transport protocol. When the repository system needs a transporter for a given remote repository,
     * it iterates the registered factories in descending order of their priority and calls
     * {@link #newInstance(RepositorySystemSession, RemoteRepository)} on them. The first transporter returned by a factory
     * will then be used for the transfer.
     */
    locator.addService(TransporterFactory.class, FileTransporterFactory.class);
    locator.addService(TransporterFactory.class, HttpTransporterFactory.class);

    locator.setErrorHandler( new DefaultServiceLocator.ErrorHandler()
    {
      //TODO(petros): make this appropriate.
      @Override
      public void serviceCreationFailed( Class<?> type, Class<?> impl, Throwable exception )
      {
        exception.printStackTrace();
      }
    } );

    return locator.getService( RepositorySystem.class );
  }


  public static DefaultRepositorySystemSession newRepositorySystemSession( RepositorySystem system )
  {
    /**
     * Creates a new Maven-like repository system session by initializing the session with values typical for
     * Maven-based resolution. In more detail, this method configures settings relevant for the processing of dependency
     * graphs, most other settings remain at their generic default value. Use the various setters to further configure
     * the session with authentication, mirror, proxy and other information required for your environment.
     *
     * @return The new repository system session, never {@code null}.
     */
    DefaultRepositorySystemSession session = MavenRepositorySystemUtils.newSession();
    // Use the various setters to further configure the session with authentication, mirror, proxy and other information
    // required for your environment.

    // example: how it handles conflicts.
    /** DependencyGraphTransformer transformer =
              new ConflictResolver( new NearestVersionSelector(), new JavaScopeSelector(),
              new SimpleOptionalitySelector(), new JavaScopeDeriver() ); */

    LocalRepository localRepo = new LocalRepository( "target/local-repo" );
    session.setLocalRepositoryManager( system.newLocalRepositoryManager( session, localRepo ) );


    /* Define the artifact as follows */
    Artifact artifact = new DefaultArtifact( "org.eclipse.aether:aether-impl:1.0.0.v20140518" );

    CollectRequest request = new CollectRequest();


    /**
     * A request to resolve transitive dependencies. This request can either be supplied with a {@link CollectRequest} to
     * calculate the transitive dependencies or with an already resolved dependency graph.
     *
     * It is passed a Dependency Node, which is an interface that is implemented as a DefaultDependencyNode
     *
     * A node within a dependency graph. To conserve memory, dependency graphs may reuse a given node instance multiple
     * times to represent reoccurring dependencies. As such clients traversing a dependency graph should be prepared to
     * discover multiple paths leading to the same node instance unless the input graph is known to be a duplicate-free
     * tree. <em>Note:</em> Unless otherwise noted, implementation classes are not thread-safe and dependency nodes should
     * not be mutated by concurrent threads.
     *
     * @noimplement This interface is not intended to be implemented by clients.
     * @noextend This interface is not intended to be extended by clients.
     */
    DependencyRequest dependencyRequest = new DependencyRequest();
    // Remote repository

    // TODO transferListener: http://sonatype.github.io/sonatype-aether/apidocs/org/sonatype/aether/transfer/TransferListener.html
    // Notifies of various network interaction
    session.setTransferListener(null/* this is what you can use to identify downloading various files */);

    // http://sonatype.github.io/sonatype-aether/apidocs/org/sonatype/aether/RepositoryListener.html
    // like what things are being downloaded.
    session.setRepositoryListener(null /* Various events with the repository*/);

    // TODO:petros how you can handle conflicts.
//    session.setDependencyGraphTransformer(null);

    // uncomment to generate dirty trees
    // session.setDependencyGraphTransformer( null );

    return session;
  }

  public static RemoteRepository newCentralRepository()
  {
    return new RemoteRepository.Builder( "central", "default", "http://repo1.maven.org/maven2/" ).build();
  }
}

