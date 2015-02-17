# php-fpm

Probably the most interesting container as it represents the point at which all of the functionality of the 
project converges.  This image defines a single php-fpm process which is what's responsible for running PHP code.


## build
Standard build script.

## develop
When creating a development environment, we tell php-fpm about our redis and postgresql databases via container links. 
The environment variables introduced will include everything needed to tell PHP and Laravel about our persistence options.

It's also worth noting that during development, we clobber `/var/www` with the `laravel` directory to allow live refresh.

## Dockerfile
A straightforward Dockerfile. The one thing noteworthy here is that we are running php-fpm with the flag that allows it 
to run as `root`.  This is a workaround to permission issues that arise when using Boot2Docker.

## php.ini
Standard php configuration file, just in case.

## php-fpm.conf
Standard php-fpm configuration file, again, just in case.

## www.conf
This file gets loaded by `php-fpm.conf` somewhat like a vhost file for nginx. It defines our pool of workers as well as 
our very important environment variable mappings.  Thanks to this file, we're able to avoid using `sed` to import 
environment variables from Docker.