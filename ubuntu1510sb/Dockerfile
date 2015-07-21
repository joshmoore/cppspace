FROM ubuntu:15.10

RUN apt-get update
#--no-install-recommends \
RUN apt-get install -y \
    build-essential \
    cmake \
    git

RUN apt-get install -y ccache

RUN adduser build
USER build
WORKDIR /home/build
