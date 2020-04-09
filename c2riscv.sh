#!/bin/bash

docker run -it \
    -v /home/bongjoon/c2riscv:/c2riscv \
    "bongjoonhyun/c2riscv:latest" \
    /bin/bash
