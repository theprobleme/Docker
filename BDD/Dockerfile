FROM alpine

LABEL version="1.0"
LABEL description="MariaDB Server"

RUN apk – update \
  && apk add mariadb \
  && apk add mariadb-client \
  && apk add mariadb-server-utils \
  && apk add pwgen \
  rm -f /var/cache/apk/*

ADD ./bdddatas/startbdd.sh /scripts/startbdd.sh
RUN chmod +x /scripts/startbdd.sh
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/my.cnf

# Port fowarding
EXPOSE 3306:3306

# Volume for Mysql datas
VOLUME [ "/var/lib/mysql" ]

# Maintain the container after leaving the shell and execute mysqld command
ENTRYPOINT [ "/scripts/startbdd.sh" ]

