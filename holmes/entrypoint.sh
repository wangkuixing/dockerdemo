#!/bin/bash

mkdir -p /opt/web
cd /opt/web
git clone https://github.com/ycwdaaaa/holmes.git
cd holmes
pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
python3 app.py


while true
do
   sleep 10
done

