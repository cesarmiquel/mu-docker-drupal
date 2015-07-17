#!/bin/bash

# Execute a command and display command with colors in console
exec() {
 
    CMD=$*
    S="\033[37mExecuting [\033[32m$CMD\033[37m]"
    echo -e $S
    eval $CMD
}

ROOTFS=`pwd`

# Build php container
cd $ROOTFS/docker/docker-php
exec 'docker build -t miquel/mu-php .'

# Build nginx container
cd $ROOTFS/docker/docker-nginx
exec 'docker build -t miquel/mu-nginx .'
