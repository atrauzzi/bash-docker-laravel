# Data

This is a data container as per Docker conventions. Because containers are considered disposable, this container
persists across invocations of the ones that depend on it.


## build
This is a straightforward build script that sets up the docker root context and then passes the path to the Dockerfile.

## develop
I refrain from ever deleting this container because I'm under the impression if I do, I could end up losing data.

## Dockerfile
Couldn't get any simpler, this Dockerfile simply says "take Ubuntu and tack a volume onto it". 