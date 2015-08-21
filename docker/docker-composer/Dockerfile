FROM d4d/mu-php

ENV COMPOSER_CACHE_DIR=/cache

RUN curl -k -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    apk del curl && \
    rm -rf /var/cache/apk/*

WORKDIR /data/project/docroot

VOLUME ["/data/project/docroot", "/cache"]

ENTRYPOINT ["/usr/local/bin/composer", "--no-interaction"]
