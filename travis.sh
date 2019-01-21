#!/bin/sh
cd build/
cmake ..
make clean
make
make test
