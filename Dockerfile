FROM php:7.2-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY . /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
RUN apt-get update -y && apt-get upgrade -y libmariadb-dev
RUN docker-php-ext-install mysqli
