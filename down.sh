#!/bin/bash

# Execute a command and display command with colors in console
exec() {
 
    CMD=$*
    S="\033[37mExecuting [\033[32m$CMD\033[37m]"
    echo -e $S
    eval $CMD
}

ROOTFS=`pwd`

exec 'docker stop data php nginx';
exec 'docker rm data php nginx';

