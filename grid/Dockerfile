FROM selenium/node-chrome-debug:3.7.1-beryllium

USER root

RUN apt-get update \
    && apt-get -y install ttf-wqy-microhei ttf-wqy-zenhei \
    && apt-get clean \
    && mkdir -p mkdir -p ~/.vnc \
    && x11vnc -storepasswd work123 ~/.vnc/passwd
