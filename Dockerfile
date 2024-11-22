FROM php:8.4.0RC4-cli-alpine3.20

RUN a2enmod rewrite && \
    docker-php-ext-install pdo pdo_mysql

COPY . /var/www/html
EXPOSE 80
