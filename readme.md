# Docker Laravel

Welcome to an example for getting up and running with Docker and Laravel using bash scripts!

This project is part studying, part teaching, part experimentation and possibly even good enough to use for real projects!

Please be sure to have at least Docker 1.5 installed when using this project.


## Contents

If you'd like to learn more about this repository, browse it!  I've placed `readme.md` files at the root of all the directories 
with explanations of what's going on.  My rationale for the choices I've made is a best-effort based on my understanding of Docker 
as a technology and its ecosystem.


### Contributing

If you spot a gap, inaccuracy or opportunity for improvement, I would really appreciate it if you opened a ticket or even a pull request!

### Where's fig?

It was recently announced that fig is being renamed and reworked into a new tool called docker-compose.  Docker 1.5 released with one 
particularly useful feature which is multiple Dockerfiles per build context.  As a result, I've just whipped together some very dumb 
bash scripts to get things done.


## Usage

To get started, all you have to do is clone this project to your local hard drive and run `images/build` followed by `images/develop`.

***Be mindful of your host environment.  If you are using Boot2Docker, then you will need to access your VM to see things
in action.  If you are running on Linux, everything should run as local services (make sure the ports aren't already claimed!).***


## Meta

This project is open source, but also outdated.  Be sure to check out http://github.com/atrauzzi/laravel-drydock!

Docker Laravel is created and maintained by [Alexander Trauzzi](http://profiles.google.com/atrauzzi).
