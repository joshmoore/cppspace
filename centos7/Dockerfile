FROM centos:7

RUN yum -y install gcc gcc-c++ make cmake git
RUN yum -y install libhdf5-devel libpng-devel python python-genshi libtiff-devel xerces-c-devel git gtest-devel graphviz java-1.7.0-openjdk
RUN yum -y install boost-devel
RUN yum -y install wget && \
    wget http://www.cmake.org/files/v3.0/cmake-3.0.0.tar.gz && \
    tar -zxvf cmake-3.0.0.tar.gz && \
    cd cmake-3.0.0 && \
    ./bootstrap && \
    gmake && \
    gmake install
RUN wget http://samba.org/ftp/ccache/ccache-3.2.2.tar.gz
RUN tar xzf ccache-3.2.2.tar.gz && \
    cd ccache-3.2.2 && \
    ./configure && \
    make && make install
RUN ln -s ccache /usr/local/bin/gcc && \
    ln -s ccache /usr/local/bin/g++ && \
    ln -s ccache /usr/local/bin/cc && \
    ln -s ccache /usr/local/bin/c++

RUN adduser build
USER build
WORKDIR /home/build
