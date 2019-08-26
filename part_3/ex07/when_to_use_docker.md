Before thinking about when to use docker, let's take a look at the main benefits:
 1. Isolation
   - Containing an app inside of an container isolates it from the host computer,
   which means that the depencies don't clutter the host but are located only inside container
   where they are needed.
 2. Portability
   - Since the app inside the container has all what it needs in order to function, it can easily be moved
   from host to another. The only thing that a host needs is enough resources to run the app and a docker installed.
 3. Compatibility
   - For a group of developers, docker helps everybody share the same enviroment. This is because docker image runs
   the same way no matter where or on what computer it's run on. This means that developers need to spend less time
   setting up enviroments and debugging enviroment specific issues.
 4. Security
