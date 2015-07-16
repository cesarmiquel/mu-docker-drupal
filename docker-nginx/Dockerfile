FROM gliderlabs/alpine

RUN apk-install nginx

ADD nginx /etc/nginx/

RUN mkdir -p /var/www/docroot
RUN mkdir -p /var/cache/nginx

COPY index.* /var/www/docroot/

EXPOSE 80

CMD ["nginx"]
