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


CMD /usr/sbin/sshd -D

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                          \
  yum -y install nginx-1.12.2 openssl --enablerepo=nginx                  && \
  yum -y install https://centos7.iuscommunity.org/ius-release.rpm         && \
  yum -y install                                                             \
    php71u-fpm                                                               \
    php71u-cli                                                               \
    php71u-mysqlnd                                                           \
    php71u-soap                                                              \
    php71u-xml                                                               \
    php71u-zip                                                               \
    php71u-json                                                              \
    php71u-mcrypt                                                            \
    php71u-mbstring                                                          \
    php71u-zip                                                               \
    php71u-gd                                                                \
     --enablerepo=ius-archive && yum clean all
     

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh
