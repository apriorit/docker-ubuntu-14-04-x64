FROM ubuntu:14.04
MAINTAINER lozovsky <lozovsky@apriorit.com>

# Install basic packages.
#
# Clean up after that to save space in the image.
RUN apt-get update && apt-get install -y \
    automake \
    binutils \
    build-essential \
    cmake \
    curl \
    git \
    linux-headers-4.4.0-93-generic \
    sparse \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /var/cache/apt/*

# Install Rust toolchain.
#
# Manually set PATH because rustup can set it only for interactive shells
# while Docker is usually run with non-interactive shell.
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.20.0 --no-modify-path
ENV PATH "/root/.cargo/bin:$PATH"
