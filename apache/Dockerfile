FROM php:8.3-apache

RUN a2enmod proxy proxy_fcgi rewrite

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf