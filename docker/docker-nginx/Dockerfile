FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

# NGINX packages to install
ENV NGINX_PACKAGES nginx

# Install NGINX
RUN \
  apt-get update && \
  apt-get install $NGINX_PACKAGES -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/*


ADD nginx /etc/nginx/

RUN mkdir -p /var/cache/nginx

EXPOSE 80

CMD ["nginx"]
