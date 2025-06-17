FROM php:8.3-fpm

WORKDIR /var/www/apilaravel

RUN apt-get update && apt-get install -y \
    libzip-dev unzip curl libpng-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo_mysql zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY . .

RUN composer install

CMD ["php-fpm"]
