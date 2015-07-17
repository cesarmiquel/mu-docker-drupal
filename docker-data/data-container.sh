#!/bin/bash

APP_PATH=/home/miquel/Work/Easytech/Drupal/Docker/app

# Launch data only container
docker run --name data -v $APP_PATH:/data:rw gliderlabs/alpine /bin/true
