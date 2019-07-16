FROM vincentliao/jupyter_notebook_env
MAINTAINER vincentliao<vincentliao@gmail.com>

RUN apk update \
 && apk add --no-cache git pkgconfig gcc linux-headers libc-dev libffi-dev libgit2-dev \
 && apk add --no-cache python3-dev \
 && apk add --no-cache sqlite \
 && pip3 install --upgrade pip 

RUN pip3 install --upgrade pygit2 pygount
RUN pip3 install --upgrade ipython 
RUN pip3 install --upgrade sqlalchemy


WORKDIR /workspace
ENTRYPOINT ["ipython3"]
