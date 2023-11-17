#!/bin/bash
make libabc.a ABC_USE_NO_READLINE=1
riscv64-linux-gnu-gcc -static -Wall -g -c test.c -o test.o
riscv64-linux-gnu-g++ -static -g -o test test.o libabc.a -lm -ldl -lpthread
cp test ~/build/run/bins
cp ~/OpenABC/bench_openabcd/fpu_orig.bench ~/build/run/data
cp abc.sh ~/build/run
