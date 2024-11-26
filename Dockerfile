FROM kalilinux/kali-rolling

RUN apt clean

RUN apt update && apt install -y openssh-server tmux nano

RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN usermod -s /bin/bash root
RUN service ssh restart

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
