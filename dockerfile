FROM ubuntu:latest

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && apt-get -y update && apt-get -y install make wget lib32z1 lib32stdc++6 && apt-get -y clean