FROM php:7.4-apache 
VOLUME /var/www/html
RUN apt-get update && apt-get upgrade -y 
RUN docker-php-ext-install mysqli 
EXPOSE 80
