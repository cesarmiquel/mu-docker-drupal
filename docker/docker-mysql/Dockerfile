FROM gliderlabs/alpine

RUN apk-install mysql && mkdir -p /var/lib/mysql && mkdir -p /etc/mysql/conf.d

COPY my.cnf /etc/mysql/

VOLUME ["/data/db"]

ENTRYPOINT ["mysqld"]

EXPOSE 3306

CMD ["--skip-grant-tables"]
