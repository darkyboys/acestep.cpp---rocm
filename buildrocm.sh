#!/bin/bash

rm -rf build
mkdir build
cd build

cmake .. -DGGML_HIPBLAS=ON -DGGML_HIP=ON
cmake --build . --config Release -j "$(nproc)"
