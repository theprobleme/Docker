# Origin image
FROM alpine:3.14.2

# File description
LABEL version="1.0"
LABEL description="Apache2 Server"

# Install depedencies
RUN apk – update \
    && apk add curl \
    && apk add php7-apache2 \
    && apk add apache2 \
    && apk add mysql \
    && apk add nano \
    && apk add bash \
    && apk add rsync \
    && apk add mlocate \
    && rm -rf /var/cache/apk/*

# Remove default index.html file
RUN rm -f /var/www/localhost/htdocs/index.html

# Port fowarding
EXPOSE 8000:80

# Volume for apache2 datas
VOLUME [ "/appdatas" ]

# Maintain the container after leaving the shell and execute httpd command
CMD [ "httpd" , "-D" , "FOREGROUND" ]

