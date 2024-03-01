FROM php:7.2-apache

# install php-mysqli
RUN docker-php-ext-install mysqli

WORKDIR /var/www/html

COPY . .

