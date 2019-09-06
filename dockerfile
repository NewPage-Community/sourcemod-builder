FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install wget lib32z1 lib32stdc++6 && apt-get -y clean