# This docker file contains build environment
FROM ubuntu:14.04
MAINTAINER maliy.sergey <maliy.sergey@apriorit.com>
RUN apt-get update && apt-get install -y bison++ libssl-dev libprocps3-dev libxalan-c-dev libxerces-c-dev libnl-3-dev \
libcrypto++-dev libcrypto++9 libpcre++-dev uuid-dev libsnappy-dev build-essential libboost-all-dev cmake maven libicu-dev zlib1g-dev \
liblog4cpp5-dev libncurses5-dev libselinux1-dev wget libsqlite3-dev google-mock libvirt-dev
RUN wget http://nixos.org/releases/patchelf/patchelf-0.8/patchelf-0.8.tar.gz && tar xf patchelf-0.8.tar.gz && patchelf-0.8/configure && make install && rm -rf patchelf-0.8 && rm -f patchelf-0.8.tar.gz
RUN apt-get build-dep -y qemu
