#!/bin/bash

docker rm -f automation
docker run --name automation -p 8400:22 -d testautomation
