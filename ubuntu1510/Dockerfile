FROM ubuntu:15.10

RUN apt-get update
RUN apt-get install -y build-essential libboost-all-dev cmake libhdf5-dev libpng12-dev \
    python python-genshi libtiff5-dev libxerces-c-dev git libgtest-dev

RUN apt-get install -y ccache

RUN adduser build
USER build
WORKDIR /home/build
