FROM gliderlabs/alpine:3.2

RUN apk-install memcached

EXPOSE 11211

USER "daemon"

ENTRYPOINT ["memcached"]
