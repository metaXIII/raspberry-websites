FROM php:8.5.0RC2-apache

RUN a2enmod rewrite && \
    docker-php-ext-install pdo pdo_mysql

COPY . /var/www/html
EXPOSE 80
