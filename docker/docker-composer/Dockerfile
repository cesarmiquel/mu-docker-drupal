FROM foo/php-fpm

ENV COMPOSER_CACHE_DIR=/cache

RUN \
  php -r "readfile('https://getcomposer.org/installer');" \
  | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /data/docroot

VOLUME ["/data/docroot", "/cache"]

ENTRYPOINT ["/usr/local/bin/composer", "--ignore-platform-reqs", "--no-interaction"]
