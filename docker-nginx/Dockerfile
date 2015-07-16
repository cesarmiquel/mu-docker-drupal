FROM gliderlabs/alpine

RUN apk-install nginx

ADD nginx /etc/nginx/

RUN mkdir -p /var/www/docroot

CMD ["nginx"]
