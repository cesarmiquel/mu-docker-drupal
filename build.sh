#!/bin/bash

# Execute a command and display command with colors in console
exec() {
 
    CMD=$*
    S="\033[37mExecuting [\033[32m$CMD\033[37m]"
    echo -e $S
    eval $CMD
}

print() {
    STRING=$*
    S="\033[37m\033[1;32m$STRING\033[0;37m]"
    echo -e $S
}

print ''
print 'Building docker containers'
print '---------------------------'

ROOTFS=`pwd`

# Build db container
cd $ROOTFS/docker/docker-mysql
exec 'docker build -t miquel/mu-mysql .'

# Build php container
cd $ROOTFS/docker/docker-php
exec 'docker build -t miquel/mu-php .'

# Build nginx container
cd $ROOTFS/docker/docker-nginx
exec 'docker build -t miquel/mu-nginx .'

APP_DIR=$ROOTFS/app
if [ ! -d $APP_DIR ]
then

    print ''
    print 'Building site structure'
    print '---------------------------'

    exec 'mkdir -p $APP_DIR/db $APP_DIR/logs $APP_DIR/project'
    if [ -x $ROOTFS/build-site.sh ]
    then
        $ROOTFS/build-site.sh
    fi
fi
