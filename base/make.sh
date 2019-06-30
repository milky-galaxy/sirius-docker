#!/bin/bash

# docker镜像下载加速问题
# http://hub-mirror.c.163.com

# alpine的apk的包下载加速问题

# 生成镜像(版本号按照时间戳生成版本处理)
VERSION=`date +%Y%m%d%H%M%S`
docker build -t sirius-docker/theia-base:$VERSION -f ./Dockerfile .
# docker tag c7b906940350 
# docker run -it -p 3000:3000 -v "$(pwd):/home/project:cached" sirius-docker/theia-base:20190630153235
