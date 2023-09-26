FROM mysql:8.0.34

LABEL maintainer="Luis Duran <et12duran@gmail.com>"
LABEL organization="ET12 'Libertador Gral. José de San Martín' - Computación"

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=bd_Mundial22

COPY install.sql /docker-entrypoint-initdb.d/
COPY scripts/ /scripts/