#!/bin/bash

nasm -felf64 ./specialmath.asm
ld ./specialmath.o -o specialmath
./specialmath

rm specialmath.o