FROM alpine
RUN apk – update && apk add curl && apk add php7-apache2 && apk add apache2 && apk add mysql \
&& apk add nano && rm -rf /var/cache/apk/*

RUN httpd

LABEL version="1.0"
LABEL description="Apache2 Server"

EXPOSE 8000:80
