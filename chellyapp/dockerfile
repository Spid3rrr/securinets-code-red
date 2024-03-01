FROM php:8.2-apache
# install php-mysqli
RUN docker-php-ext-install mysqli

# install mysqli
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html

COPY . .