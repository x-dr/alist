FROM xhofe/alist:latest
# FROM ubuntu:latest

WORKDIR /app
ADD . /app/



FROM nginx:1.21.6

COPY default.conf.template /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
# COPY static-html /usr/share/nginx/html

CMD /bin/bash -c  nginx -g 'daemon off;'

