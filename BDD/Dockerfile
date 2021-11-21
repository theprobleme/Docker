FROM alpine

LABEL version="1.0"
LABEL description="MariaDB Server"

RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils pwgen && \
  rm -f /var/cache/apk/*

# Port fowarding
EXPOSE 3306

# Volume for Mysql datas
VOLUME [ "/var/lib/mysql" ]

# Maintain the container after leaving the shell and execute mysqld command
CMD [ "mysqld" , "-D" , "FOREGROUND" ]

