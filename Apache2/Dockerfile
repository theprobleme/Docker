# Origin image
FROM alpine

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
    && rm -rf /var/cache/apk/*

# Port fowarding
EXPOSE 8000:80

# Maintain the container after leaving the shell
CMD [ "-D" , "FOREGROUND" ]

# Run "httpd" at the start of the container
ENTRYPOINT [ "/usr/sbin/httpd" ]


