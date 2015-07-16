FROM alpine/php-fpm

ENV COMPOSER_CACHE_DIR=/cache

RUN curl -k -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    apk del curl && \
    rm -rf /var/cache/apk/*

WORKDIR /var/www/site

VOLUME ["/var/www/site", "/cache"]

ENTRYPOINT ["/usr/local/bin/composer", "--ignore-platform-reqs", "--no-interaction"]
