#!/usr/bin/env bash

cd
cd librealsense
mkdir build
cd build
cmake .. -DBUILD_EXAMPLES:BOOL=true
make && sudo make install
cd

