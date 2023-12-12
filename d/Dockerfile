# Gunakan image resmi PHP dengan FPM dan versi 8.0.2
# FROM php:8.0.2-fpm

# # Install dependensi yang diperlukan untuk Composer
# RUN apt-get update && apt-get install -y \
#     git \
#     unzip

# # Install Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# # Setel direktori kerja ke direktori proyek Laravel
# WORKDIR /var/www/html

# # Salin file composer dan package ke dalam direktori kerja
# COPY composer.json composer.lock /var/www/html/

# # Install dependensi
# RUN composer install --no-scripts --no-autoloader

# # Salin seluruh kode ke dalam direktori kerja
# COPY . /var/www/html/

# # Generate autoload files
# RUN composer dump-autoload

# # Tambahkan perintah lain yang diperlukan (seperti migrasi, seeding, dll.)

# # Expose port 9000 dan jalankan PHP-FPM
# EXPOSE 9000
# CMD ["php-fpm"]


# FROM php:7.2-fpm
# FROM php:8.0.2-fpm

# # Copy composer.lock dan composer.json ke /var/www
# COPY composer.lock composer.json /var/www/

# # Set sebagai working directory
# WORKDIR /var/www

# # Install dependencies yang diperlukan
# RUN apt-get update && apt-get install -y \
#     libonig-dev \
#     build-essential \
#     libpng-dev \
#     libzip-dev \
#     libjpeg-dev \
#     libfreetype6-dev \
#     locales \
#     zip \
#     jpegoptim optipng pngquant gifsicle \
#     vim \
#     unzip \
#     git \
#     curl

# Hapus cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# # Install extensions
# RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
# RUN docker-php-ext-configure gd --with-freetype --with-jpeg
# RUN docker-php-ext-install gd

# # Install composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# # Add user for laravel application
# RUN groupadd -g 1000 www
# RUN useradd -u 1000 -ms /bin/bash -g www www

# # Copy existing application directory contents
# COPY . /var/www/

# # Copy existing application directory permissions
# COPY --chown=www:www . /var/www/

# # Change current user to www
# USER www

# # Expose port 9000 and start php-fpm server
# EXPOSE 9000
# CMD ["php-fpm"]



FROM php:8.0.2-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    libonig-dev \
    build-essential \
    libpng-dev \
    libzip-dev \
    libjpeg-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
# RUN docker-php-ext-configure gd --with-gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
# RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl

# RUN docker-php-ext-install gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for Laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory contents
COPY . /var/www

# Set permissions
RUN chown -R www:www /var/www

# Switch to the www user
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
