FROM ubuntu

# ADD /laravel /var/www

RUN apt-get update -y && \
    apt-get install -y \
    curl \
    php5-mongo \
    php5-mysql \
    php5-pgsql \
    php5-redis \
    php5-json \
    php5-mcrypt \
    php5-curl \
    php5-xdebug \
    php5-cli

RUN php5enmod mcrypt

COPY php.ini /etc/php5/fpm/php.ini
COPY entrypoint.sh /entrypoint.sh
RUN chmod u=rwx /entrypoint.sh

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www

EXPOSE 9000
ENTRYPOINT ["/entrypoint.sh"]
