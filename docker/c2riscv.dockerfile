FROM ubuntu:latest
MAINTAINER bongjoon.hyun@gmail.com

RUN mkdir /c2riscv && \
    apt clean && \
    apt-get update -y && \
    apt-get install -y autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev python python-pip python3 python3-pip git && \
    git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
WORKDIR /riscv-gnu-toolchain
RUN ./configure --with-arch=rv32imafd --prefix=/opt/riscv/ && \
    make linux
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/riscv/bin
WORKDIR /c2riscv