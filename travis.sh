#!/bin/sh
mkdir -p build/
cd build/
cmake ..
make clean
make
make test
