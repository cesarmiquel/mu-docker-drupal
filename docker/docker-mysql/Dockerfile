FROM gliderlabs/alpine

ENV MYSQL_ROOT_PASSWORD r00t
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_USER_PASSWORD drupal

RUN apk-install mysql mysql-client

RUN mkdir -p /var/lib/mysql && mkdir -p /etc/mysql/conf.d

COPY my.cnf /etc/mysql/

ADD ./entrypoint.sh /bin/entrypoint.sh

VOLUME ["/var/lib/mysql", "/etc/mysql/conf.d/"]

EXPOSE 3306

CMD ["/bin/sh", "/bin/entrypoint.sh"]
