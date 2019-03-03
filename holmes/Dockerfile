FROM centos:7

ADD entrypoint.sh /root
ADD requirements.txt /root
WORKDIR /root
USER root

RUN yum install -y epel-release \
    && yum install -y python34 git python34-setuptools python34-devel.x86_64 \
    && easy_install-3.4 pip \
    && yum install -y gcc \
    && yum install -y soci-mysql-devel.x86_64 \
    && ln -s /usr/local/mysql/bin/mysql /usr/bin \
    && pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/


ENTRYPOINT ["/root/entrypoint.sh"]
