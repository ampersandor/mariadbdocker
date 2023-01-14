FROM mariadb:10.2.12

# COPY configuration file
COPY my.cnf /etc/mysql/my.cnf

# COPY sql dump file of mariadb tables 
COPY initdb.sql /docker-entrypoint-initdb.d/

# Setting Environment variables
ENV MYSQL_USER=bioinfo
ENV MYSQL_PASSWORD=bioinfo001
ENV MYSQL_ROOT_PASSWORD=bioinfo001
ENV TZ=Asia/Seoul

EXPOSE 3306

#RUN mysql -u root -pbioinfo001 -e "GRANT ALL PRIVILEGES ON *.* TO bioinfo@'localhost' IDENTIFIED BY bioinfo001;"

