FROM php:8.2-rc-apache
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
RUN apt-get update && apt-get upgrade -y
WORKDIR /var/www/html
COPY ./apply/* apply/
EXPOSE 80
