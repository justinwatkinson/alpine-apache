FROM alpine:latest

MAINTAINER justinwatkinson justin.watkinson@gmail.com

RUN apk update && \
    apk add apache2

EXPOSE 80

ADD httpd.conf /etc/apache2/httpd.conf

ENTRYPOINT httpd -DFOREGROUND
