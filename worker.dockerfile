FROM php:8.2-cli

WORKDIR /app

COPY --chown=www-data:www-data . /app

RUN apt update && apt install zip libzip-dev -y && \
    docker-php-ext-install zip pcntl sockets && \
    docker-php-ext-enable zip sockets 

COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer

RUN composer install && \
    composer require laravel/octane spiral/roadrunner && \
    php artisan octane:install --server=frankenphp

EXPOSE 8000

CMD php artisan octane:start --server=frankenphp --host=0.0.0.0 --port=8000