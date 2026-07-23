FROM debian:13

RUN apt update

RUN apt -U install -y openssh-server

RUN date > /tmp/date-install.log

EXPOSE 22/tcp

CMD [ "/usr/sbin/sshd", "-D" ]