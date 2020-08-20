
FROM php:7.4-fpm


RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git \
        vim \
        rsync \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libxpm-dev \
        libgmp-dev \
        libonig-dev \
        libvpx-dev \
        zlib1g-dev \
        libzip-dev \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/  \
    && docker-php-ext-install -j$(nproc)  mbstring mysqli pdo_mysql zip gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Указываем рабочую директорию для PHP
WORKDIR /var/www/app
# Запускаем контейнер
# Из документации: The main purpose of a CMD is to provide defaults for an executing container. These defaults can include an executable,
# or they can omit the executable, in which case you must specify an ENTRYPOINT instruction as well.
CMD ["php-fpm"]
