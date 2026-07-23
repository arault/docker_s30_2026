FROM debian:13

RUN apt -U install -y openssh-server &&\
    date > /tmp/date-install.log

ADD config_serveur_ssh.tar /

EXPOSE 22/tcp

CMD [ "/usr/sbin/sshd", "-D" ]