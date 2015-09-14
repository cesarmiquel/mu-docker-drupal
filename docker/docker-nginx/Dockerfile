FROM gliderlabs/alpine:3.2

RUN apk-install nginx

ADD nginx /etc/nginx/

RUN mkdir -p /var/cache/nginx

EXPOSE 80

CMD ["nginx"]
