#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

    mysql_install_db

    echo "use mysql; create database $db_name;" | mysql -u root -h 127.0.0.1
    echo "grant all privileges on $db_name.* to $db_user@'%' identified by '$db_pass' with grant option; flush privileges;" | mysql -u root  -h 127.0.0.1

    killall mysqld
    sleep 1s
fi

mysqld
