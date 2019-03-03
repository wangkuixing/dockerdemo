FROM centos

ADD entrypoint.sh /root
ADD jdk /opt/java-1.8

ENV M2_HOME=/usr/local/maven
ENV M2=$M2_HOME/bin
ENV JAVA_HOME=/opt/java-1.8
ENV PATH=$JAVA_HOME:$M2:$PATH

RUN yum install -y wget openssh-server vim git openssh-clients \
    && /usr/bin/ssh-keygen -A \
    && wget http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz \
    && tar xvf apache-maven-3.0.5-bin.tar.gz \
    && mv apache-maven-3.0.5  /usr/local/maven \
    && ssh-keygen -t rsa -f /root/.ssh/id_rsa -N '' \
    && cat /root/.ssh/id_rsa.pub > /root/.ssh/authorized_keys \
    && chmod 600 /root/.ssh/authorized_keys \
    && echo "StrictHostKeyChecking no" > /root/.ssh/config \
    && echo "UserKnownHostsFile /dev/null" >> /root/.ssh/config \
    && echo 1qaz9ol.|passwd --stdin root \
    && echo "export M2_HOME=/usr/local/maven" >> /root/.bashrc \
    && echo "export M2=$M2_HOME/bin" >> /root/.bashrc \
    && echo "export JAVA_HOME=/opt/java-1.8" >> /root/.bashrc \
    && echo "export PATH=$JAVA_HOME:$M2:$PATH" >> /root/.bashrc



ENTRYPOINT ["/bin/bash", "/root/entrypoint.sh"]
