FROM registry.wangpedersen.com/nginx

USER root
COPY . /var/www/html
USER nginx
