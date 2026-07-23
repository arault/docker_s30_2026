FROM debian:13

COPY data.txt /

RUN apt update

RUN apt install -y redis-server

EXPOSE 6379/tcp

RUN useradd -m -s /bin/bash camille

RUN groupadd utilisateurs

USER camille:utilisateurs

WORKDIR /home/camille/

# Si on voulait que redis-server se lance automatiquement
# lorsqu'on crée un conteneur basé sur la présente image,
# il faudrait le faire avec une instruction CMD comme ceci :
#CMD redis-server  /etc/redis/redis.conf --daemonize no