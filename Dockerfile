FROM python:3.7-alpine
MAINTAINER vincentliao<vincentliao@gmail.com>


RUN apk update \
 && apk add --no-cache git pkgconfig gcc linux-headers libc-dev libffi-dev libgit2-dev \
 && apk add --no-cache python3-dev \
 && pip3 install --upgrade pip 

RUN pip3 install --upgrade pygit2 pygount
RUN pip3 install --upgrade ipython 


WORKDIR /workspace
ENTRYPOINT ["ipython3"]
