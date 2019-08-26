Before thinking about when to use docker, let's take a look at the main benefits:
 1. Isolation
   - Containing an app inside of an container isolates it from the host computer,
   which means that the depencies don't clutter the host but are located only inside container
   where they are needed. Containerised apps are also easy to remove from host, leaving the enviroment clean.
 2. Portability
   - Since the app inside the container has all what it needs in order to function, it can easily be moved
   from host to another. The only thing that a host needs is enough resources to run the app and a docker installed.
 3. Compatibility
   - For a group of developers, docker helps everybody share the same enviroment. This is because docker image runs
   the same way no matter where or on what computer it's run on. This means that developers need to spend less time
   setting up enviroments and debugging enviroment specific issues.
 4. Security
   - When used properly, docker adds security to apps as they are running inside isolated containers opposed to running directly
     in host. docker containers can't see the processes inside other containers. This means that if some service inside a container
     gets comporomised, the breach is contained inside that container only while other containers are uncomporomised.

In light of these benefits (among many others not said above) we can draw some conclusions about when to use docker.

Docker seems like a good option when you are working in a team due to portability and combatibility of containers. It also adds
security when used properly. It's ability to isolate projects depencencies inside containers frees the host computer from unwanted clutter,
which makes it tempting to use basically in any project.
