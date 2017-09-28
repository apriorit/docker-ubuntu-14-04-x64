FROM ubuntu:14.04
MAINTAINER lozovsky <lozovsky@apriorit.com>
RUN apt-get update && apt-get install -y \
    automake \
    build-essential \
    cmake \
    curl \
    gcc \
    g++ \
    git \
    libboost-dev \
    libcurl4-openssl-dev \
    libyaml-cpp-dev \
    linux-headers-4.4.0-93-generic \
    sparse \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*
