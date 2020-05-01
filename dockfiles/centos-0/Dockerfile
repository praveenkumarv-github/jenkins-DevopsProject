FROM centos:centos7


RUN yum -y install openssh-server

RUN yum -y install openssh-clients

RUN echo "1234" | passwd root --stdin && \
    mkdir -p /root/.ssh && \
    chmod -Rv 700 /root/.ssh/
COPY remote-key.pub /root/.ssh/authorized_keys

RUN chown root:root -Rv /root/ && \
    chmod 600 /root/.ssh/authorized_keys

RUN ssh-keygen -A

RUN mkdir -p /vo01/ /data/

CMD /usr/sbin/sshd -D
