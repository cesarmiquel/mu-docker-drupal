FROM gliderlabs/alpine

# Install PHP
RUN apk-install php php-common php-cli php-curl php-json php-mcrypt php-memcache php-fpm php-mysql php-apcu 

# Copy configuration
COPY php-fpm.conf /etc/php/php-fpm.conf
COPY php.ini /etc/php/php.ini

EXPOSE 9000

# Start php-fpm process
CMD ["/usr/bin/php-fpm", "-F", "--fpm-config", "/etc/php/php-fpm.conf", "-c", "/etc/php/php.ini"]
