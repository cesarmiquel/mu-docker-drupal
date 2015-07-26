#!/bin/bash

# Execute a command and display command with colors in console
exec() {

    CMD=$*
    S="\033[37mExecuting [\033[32m$CMD\033[37m]"
    echo -e $S
    eval $CMD
}

ROOTFS=`pwd`

# Launch data container
exec "docker run --name data -v $ROOTFS/app:/data:rw \
  -v $ROOTFS/app/db:/var/lib/mysql:rw gliderlabs/alpine /bin/true"

# Launch db container
exec 'docker -D=true run -d --name db -p 13306:3306 --volumes-from data miquel/mu-mysql'

# Launch php container
exec 'docker -D=true run -d --name php --link db:db --volumes-from data miquel/mu-php'

# Launch nginx container
exec 'docker -D=true run -d --name nginx --link php:php -p 8000:80 --volumes-from data miquel/mu-nginx'
