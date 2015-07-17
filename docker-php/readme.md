# Build
docker build -t miquel/mu-php .

# Run container
docker -D=true run -d --name php --volues-from data miquel/mu-php

# Run a shell in container
docker exec -i=true -t php /bin/sh
