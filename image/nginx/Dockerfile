FROM ubuntu

RUN apt-get update -y && \
    apt-get install -y nginx

WORKDIR /tmp
# ADD laravel /var/www

COPY nginx.conf /etc/nginx/nginx.conf
COPY laravel.conf /etc/nginx/sites-available/laravel.conf
RUN ln -s /etc/nginx/sites-available/laravel.conf /etc/nginx/sites-enabled/laravel.conf && \
    rm /etc/nginx/sites-enabled/default

COPY entrypoint.sh /entrypoint.sh
RUN chmod u=rwx /entrypoint.sh

EXPOSE 80 443
ENTRYPOINT ["/entrypoint.sh"]
