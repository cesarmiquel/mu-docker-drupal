### Build

```
docker build -t miquel/mu-db .
```

### Run container
```
docker -D=true run -d --name db \
  --volumes-from data miquel/mu-db
```

### Run a shell in container
```
docker exec -i=true -t db /bin/sh
```


From image: gliderlabs/alpine:3.1

Mysql Server: 5.5.40-r1

## JUST BUILD
Build from Dockerfile.

```
docker build -t yourname/mysql
```

## NO SQL DUMPS
Connect your DB thouth volume.

```
-v /my/database:/var/lib/mysql
```

## You start with a clean slate?
Mount empty folder into volume.

## INCLUDE YOUR CONFIG

```
-v /my/custom/configs:/etc/mysql/conf.d
```

## QUICK START
```
$ docker run --rm -v /my/empty/database:/var/lib/mysql -p 3306:3306 yourname/mysql
```

## TRY NOW
Make container with mysql server

```
$ mkdir -p /tmp/empty/db

$ docker run --rm --name "mysql-server" -v /tmp/empty/db:/var/lib/mysql yourname/mysql

```
