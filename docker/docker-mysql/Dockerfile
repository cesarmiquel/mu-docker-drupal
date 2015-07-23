FROM gliderlabs/alpine:3.1

ENV db_name drupal
ENV db_user drupal
ENV db_pass drupal

RUN apk-install mysql mysql-client

RUN mkdir -p /var/lib/mysql && mkdir -p /etc/mysql/conf.d

COPY my.cnf /etc/mysql/

ADD ./entrypoint.sh /bin/entrypoint.sh

VOLUME ["/var/lib/mysql", "/etc/mysql/conf.d/"]

EXPOSE 3306

CMD ["/bin/sh", "/bin/entrypoint.sh"]
