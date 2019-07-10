FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y wget lib32z1 lib32stdc++6
RUN apt-get -y clean