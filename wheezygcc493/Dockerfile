FROM gcc:4.9.3

RUN apt-get update && \
    apt-get install -y build-essential libboost-all-dev cmake libhdf5-dev libpng12-dev \
    python python-genshi libtiff5-dev libxerces-c-dev git libgtest-dev && \
    apt-get install -y ccache
RUN apt-get install -y wget && \
    wget http://www.cmake.org/files/v3.0/cmake-3.0.0.tar.gz && \
    tar -zxvf cmake-3.0.0.tar.gz && \
    cd cmake-3.0.0 && \
    ./bootstrap && \
    make && \
    make install

RUN adduser build
USER build
WORKDIR /home/build
