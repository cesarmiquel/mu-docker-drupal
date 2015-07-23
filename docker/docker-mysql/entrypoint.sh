#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

    mysql_install_db

    echo "CREATE DATABASE $db_name;" | mysql
    echo "GRANT ALL ON $db_name TO $db_user@'%' IDENTIFIED BY '$db_pass' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

    killall mysqld
    sleep 1s
fi

mysqld
