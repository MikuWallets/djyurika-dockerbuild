FROM mariadb:latest
MAINTAINER EleMas* "elemas@hatsunemiku.kr"
# fill your password
ENV MYSQL_ROOT_PASSWORD=your_root_password
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN cp -r /var/lib/mysql /var/lib/mysql-no-volume
CMD ["--datadir", "/var/lib/mysql-no-volume"]
COPY init.sql /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/init.sql
EXPOSE 3306
