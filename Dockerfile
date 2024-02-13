FROM php:8.2-apache

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install MySQL client
RUN apt-get update && apt-get install -y default-mysql-client

# Install PHP zip extension
RUN apt-get install -y libzip-dev zip && \
    docker-php-ext-install zip




# Set up environment variables for MariaDB connection
ENV DB_HOST=mariadb
ENV DB_PORT=3306
ENV DB_DATABASE=mydatabase
ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword

# Your remaining Dockerfile instructions...
