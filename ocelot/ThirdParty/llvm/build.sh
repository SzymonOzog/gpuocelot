#!/usr/bin/env bash
# Build script for Docker
set -e
CMAKE_CURRENT_SOURCE_DIR=$(dirname "$0")
CMAKE_BUILD_TYPE=$1
CMAKE_CURRENT_BINARY_DIR=$2
mkdir -p $CMAKE_CURRENT_BINARY_DIR
cd $CMAKE_CURRENT_BINARY_DIR
cmake -DCMAKE_BUILD_TYPE=$1 $CMAKE_CURRENT_SOURCE_DIR
make -j8
