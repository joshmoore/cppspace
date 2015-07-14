FROM centos:6

RUN yum -y install gcc gcc-c++ make cmake git
RUN yum -y install libhdf5-devel libpng-devel python python-genshi libtiff-devel xerces-c-devel git gtest-devel graphviz java-1.7.0-openjdk
RUN yum -y install https://www.softwarecollections.org/en/scls/denisarnaud/boost148/epel-6-x86_64/download/denisarnaud-boost148-epel-6-x86_64.noarch.rpm
RUN yum -y install boost148-devel
RUN yum -y install boost148-regex

# From https://raw.githubusercontent.com/castisdev/docker-centos6/master/install_boost157.sh
RUN yum -y install wget bzip2-devel && \
    yum -y clean all && \
    wget http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.tar.gz

RUN yum -y install tar && \
    tar xzf boost_1_57_0.tar.gz && \
    cd boost_1_57_0 && \
    ./bootstrap.sh && \
    ./b2 --prefix=/usr/local/boost157 --without-python -j4 install && \
    ./b2 boost.locale.icu=off --with-locale --prefix=/usr/local/boost157 -j4 install && \
    cd .. && \
    rm -rf boost_1_57_0*

RUN adduser build
USER build
WORKDIR /home/build
