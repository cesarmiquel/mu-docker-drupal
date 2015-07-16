FROM gliderlabs/alpine

RUN apk-install php php-common php-cli php-curl php-json php-mcrypt php-memcache php-fpm php-mysql php-apcu 

CMD ["/usr/bin/php-fpm", "-F", "-c", "/etc/php/php-fpm.conf", "-g", "/var/run/php-fpm.pid"]
