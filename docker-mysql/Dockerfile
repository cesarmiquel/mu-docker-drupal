FROM gliderlabs/alpine:3.1

RUN apk-install mysql && mkdir -p /var/lib/mysql && mkdir -p /etc/mysql/conf.d

COPY my.cnf /etc/mysql/

VOLUME ["/var/lib/mysql", "/etc/mysql/conf.d/"]

ENTRYPOINT ["mysqld"]

EXPOSE 3306

CMD ["--skip-grant-tables"]
