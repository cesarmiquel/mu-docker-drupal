FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

# PHP packages to install
ENV PHP_PACKAGES \
  php5 php5-common php5-cli php5-fpm \
  php-pear php5-apcu php5-curl php5-gd php5-json php5-mcrypt \
  php5-mysql php5-sqlite php5-memcache php-xml-parser

# Install PHP
RUN \
  apt-get update && \
  apt-get install $PHP_PACKAGES -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy configuration
COPY php.ini /etc/php5/fpm/php.ini
COPY php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY www.conf /etc/php5/fpm/pool.d/www.conf

# Create sample index.php
RUN \
  mkdir -p /var/www && \
  chown -R www-data:www-data /var/www && \
  echo "<?php phpinfo(); ?>" > /var/www/index.php

# Expose php-fpm
EXPOSE 9000
