# Build
docker build -t d4d/mu-solr .

# Run container
docker -D=true run -d --name solr --volues-from data d4d/mu-solr

# Run a shell in container
docker exec -i=true -t solr /bin/sh
