FROM gliderlabs/alpine

# Install PHP
RUN apk-install php php-common php-cli php-curl php-gd php-xml php-dom php-json php-mcrypt php-memcache php-fpm php-mysql php-pdo php-pdo_mysql php-pdo_sqlite php-sqlite3 php-apcu php-phar php-openssl php-ctype php-zip mysql-client

# Copy configuration
COPY php-fpm.conf /etc/php/php-fpm.conf
COPY php.ini /etc/php/php.ini

EXPOSE 9000

# Start php-fpm process
CMD ["/usr/bin/php-fpm", "-F", "--fpm-config", "/etc/php/php-fpm.conf", "-c", "/etc/php/php.ini"]
