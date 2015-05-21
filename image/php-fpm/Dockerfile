FROM ubuntu

# ADD /laravel /var/www

RUN apt-get update -y && \
    apt-get install -y \
    php5-mongo \
    php5-mysql \
    php5-pgsql \
    php5-redis \
    php5-json \
    php5-mcrypt \
    php5-curl \
    php5-xdebug \
    php5-fpm

RUN php5enmod mcrypt

COPY php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY php.ini /etc/php5/fpm/php.ini
COPY www.conf /etc/php5/fpm/pool.d/www.conf

EXPOSE 9000
ENTRYPOINT ["/usr/sbin/php5-fpm", "-F"]
