# This docker file contains build environment
FROM ubuntu:14.04
MAINTAINER maliy.sergey <maliy.sergey@apriorit.com>
RUN apt-get update && apt-get install -y bison++ libssl-dev libprocps3-dev libnl-3-dev libcrypto++-dev libpcre++-dev uuid-dev libsnappy-dev build-essential libboost-all-dev cmake maven libicu-dev zlib1g-dev liblog4cpp5-dev libncurses5-dev libselinux1-dev
