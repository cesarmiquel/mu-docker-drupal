# Build
docker build -t miquel/mu-nginx .

# Run container
docker -D=true run -d --name nginx --link php:php -p 8000:80 miquel/mu-nginx

# Run a shell in container
docker exec -i=true -t nginx /bin/sh
