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
    S="\033[37m\033[1;32m$STRING\033[0;37m"
    echo -e $S
}

ROOTFS=`pwd`

