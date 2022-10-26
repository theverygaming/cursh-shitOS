#!/bin/bash

# cmake is stupid and i couldn't get it to work so instead i have created this very good build script

mkdir -p shitcstd/build
cd shitcstd/build && cmake .. && make && cd ../../
gcc -nostdlib -static -fno-pie -fno-stack-protector -ffreestanding -m32 -march=i386 -Ishitcstd/include -Lshitcstd/build main.c -lshitcstd -o cursh
