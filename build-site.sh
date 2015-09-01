#!/bin/bash

. 'functions.sh'

print "Building site............"

GIT=`which git`

# Clone repo and add symblink
if [ ! -d $ROOTFS/app/project/docroot ]
then
    print "Downloading latest Drupal Core ..."
    exec 'wget -O - http://ftp.drupal.org/files/projects/drupal-7.39.tar.gz | tar zxf -'
    exec 'mv drupal-7.39 app/project/docroot'
    exec 'ln -s project/docroot app/docroot'

    print "Cloning git repo ..."
    exec "$GIT clone git@bitbucket.org:kurobits/condo-profile.git app/project/docroot/profiles/condo"

    DEFAULT_DIR="$ROOTFS/app/project/docroot/sites/default"

    print "Adding config and files directory ..."
    exec "mkdir -p $DEFAULT_DIR/files"
    exec "chmod a+rw $DEFAULT_DIR/files"
    exec "cp $DEFAULT_DIR/default.settings.php $DEFAULT_DIR/settings.php"
    echo '' >> $DEFAULT_DIR/settings.php
    echo '// read local settings' >> $DEFAULT_DIR/settings.php
    echo 'if (file_exists(__DIR__ . "/local.settings.php")) {' >> $DEFAULT_DIR/settings.php
    echo ' require(__DIR__ . "/local.settings.php");' >> $DEFAULT_DIR/settings.php
    echo '}' >> $DEFAULT_DIR/settings.php

    print "Copying local settings for site ..."
    exec "cp $ROOTFS/local.settings.php $DEFAULT_DIR"

    print ''
    print '----------------------------------------------------------------------'
    print 'Levantar contenedores con ./d4d up y luego entrar a:'
    print 'http://localhost:8000/install.php'
fi

# Add local settings and files directory
