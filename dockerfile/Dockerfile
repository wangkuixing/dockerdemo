FROM centos

ADD entrypoint.sh /root

#RUN yum install -y git 
RUN yum install -y vim


ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]
