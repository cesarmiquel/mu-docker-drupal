# Build
docker build -t miquel/mu-php .

# Run container
docker -D=true run -d --name php miquel/mu-php
