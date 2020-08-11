FROM php:7.4-apache 
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
VOLUME /var/www/html
RUN apt-get update && apt-get upgrade -y && apt-get install -y vim 
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
RUN docker-php-ext-install mysqli 
EXPOSE 80
