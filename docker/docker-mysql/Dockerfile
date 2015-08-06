FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

ENV MYSQL_ROOT_PASSWORD r00t
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_USER_PASSWORD drupal

# PHP packages to install
ENV MYSQL_PACKAGES mysql-server

# Install PHP
RUN \
  apt-get update && \
  apt-get install $MYSQL_PACKAGES -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/lib/mysql && mkdir -p /etc/mysql/conf.d

COPY my.cnf /etc/mysql/

ADD ./entrypoint.sh /bin/entrypoint.sh

VOLUME ["/var/lib/mysql", "/etc/mysql/conf.d/"]

EXPOSE 3306

CMD ["/bin/sh", "/bin/entrypoint.sh"]
