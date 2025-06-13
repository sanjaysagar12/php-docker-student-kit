# syntax=docker/dockerfile:1
FROM php:8.3-apache

# ---------- System packages ----------
RUN apt-get update \
 && apt-get install -y --no-install-recommends git \
 && rm -rf /var/lib/apt/lists/*

# ---------- Apache configuration ----------
RUN a2enmod rewrite headers

# Allow directory listings and .htaccess control
RUN printf '%s\n' \
    '<Directory /var/www/html>' \
    '    Options Indexes FollowSymLinks' \
    '    AllowOverride All' \
    '    Require all granted' \
    '</Directory>' \
    > /etc/apache2/conf-available/allow-index.conf \
 && a2enconf allow-index

# ---------- PHP extensions & settings ----------
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN echo "short_open_tag=On" > /usr/local/etc/php/conf.d/zz-short-open-tag.ini

# ---------- Symbolic link ----------
RUN ln -s /var/www/html /htdocs

# ---------- Workspace ----------
WORKDIR /var/www/html
