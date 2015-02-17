# Images

All image sources are separated by the process they encapsulate.  Each directory contains everything necessary to 
prepare and in most cases launch their corresponding process.


## attach

This is just a handy utility to attach to any **running** container.  It will give you a bash terminal so that you can 
inspect the running container state.  As is the case with Docker, you cannot attach to a container that isn't running.

## build

This is just a script that builds the environment by calling each containers' build scripts one after another.

## develop

Similar to build, this goes one by one through all the images, except instead it creates and launches containers from them. 
Develop scripts are particularly special because they also define the runtime paramters that allow the cluster of containers 
to function.