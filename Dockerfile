FROM ubuntu:14.04
MAINTAINER buksha <buksha.dmitry@apriorit.com>

RUN apt-get update
RUN apt-get install -y build-essential software-properties-common git cmake xsltproc chrpath libssl-dev libx11-dev libxext-dev libxinerama-dev
RUN apt-get install -y libxcursor-dev libxdamage-dev libxv-dev libxkbfile-dev libasound2-dev libcups2-dev libxml2 libxml2-dev
RUN apt-get install -y libxrandr-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libxi-dev libgstreamer-plugins-base1.0-dev
