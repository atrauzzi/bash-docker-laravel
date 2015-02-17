# nginx

This image defines a single nginx process that listens on port 8080 which will be used to host static content as 
well as forward requests to `.php` scripts to php-fpm.


## build
A simple build script, similar to the data container.

## develop
When building a development setup, the develop script links the nginx and php-fpm containers together.  Due to the 
nature of a development environment, we also will need live updating of code.  This means that we'll also clobber 
the publicly hosted directory of our project.

One detail that seems to be working so far is that I don't copy the entire Laravel project into the 
container.  Either when I'm `ADD`ing from the Dockerfile, or when I bind-mount to the host filesystem.  Instead, 
I'm only doing the public directory.  This ensures that the server capable of serving static content only has 
access to `index.php` for bootstrapping via php-fpm.

## Dockerfile
Inside this Dockerfile, I copy in configuration, the public directory and configure the vhost.

## entrypoint.sh
Due to security restrictions when starting nginx, environment variables from Docker must be explicitly written into nginx 
configuration files.  The one we need in this case is whatever host and port our php-fpm upstream can be found.


## laravel.conf
vhost configuration for our laravel project.

## nginx.conf

Standard nginx configuration file.  Because of permission issues with Boot2Docker, I'm running nginx as root. While 
this is undesirable, I'm considering the workaround acceptable enough until such a time that better conventions emerge.
