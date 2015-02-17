# php-cli

This container is a general purpose php executable host.  Multiple instances of it can be used to run commands like
`composer.phar` and `artisan`.

Historically I've used homebrew (OSX) or apt-get (Ubuntu) to install a local copy of PHP and then worked with 
dependencies from a separate environment to my hosting (unless I was using `./artisan serve`). This hasn't caused 
any outright grief, but I have seen situations where composer detects differences between the environments.

At the root of this project, you will see `composer` and `artisan` scripts.  They leverage this image to run code in 
the same environment as the server processes.  This also obviates the need to install any local PHP development tools.


## build
Standard build script.

## Dockerfile
This image will match the php-fpm container quite closely, with the exception that it installs the cli instead.  After 
that, it grabs the latest copy of composer and copies in an entrypoint script.

## entrypoint.sh
This script performs a little bit of magic to ensure that the SSH setup you have on your host is copied into the 
running container.  These steps cannot be performed in the Dockerfile as they depend on an `~/.ssh` which can't be 
inferred until runtime.  It's probably one of the best examples of why containers usually need entrypoint scripts.

Immediately after copying in the host's SSH configuration, the entrypoint forwards through to the intended command.

## php.ini
Default php.ini, just in case we ever want to change anything.