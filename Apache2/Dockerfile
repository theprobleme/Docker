# Origin image
FROM alpine:3.14.2

# File description
LABEL version="1.0"
LABEL description="Apache2 Server"

# Install depedencies
RUN apk - update \
    && apk add apache2 \
    && apk add php7 \
    && apk add php7-apache2 \
    && apk add php7-openssl \
    && apk add php7-xml \
    && apk add php7-pdo \
    && apk add php7-mcrypt \
    && apk add php7-session \
    && apk add php7-mysqli \
    && apk add php7-zlib \
    && apk add su-exec \ 
    && apk add php7-pdo_mysql \
    && rm -rf /var/cache/apk/*

# Remove default index.html file
RUN rm -f /var/www/localhost/htdocs/index.html

# Port fowarding
EXPOSE 8000:80

# Volume for apache2 datas
VOLUME [ "/appdatas" ]

# Maintain the container after leaving the shell and execute httpd command
CMD [ "httpd" , "-D" , "FOREGROUND" ]

