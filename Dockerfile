FROM --platform=$BUILDPLATFORM wordpress:php8.2-apache

RUN pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install opcache
