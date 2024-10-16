#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 {Debug|Release}"
    exit 1
fi

BUILD_TYPE=$1

if [ "$BUILD_TYPE" != "Debug" ] && [ "$BUILD_TYPE" != "Release" ]; then
    echo "Invalid build type: $BUILD_TYPE"
    echo "Usage: $0 {Debug|Release}"
    exit 1
fi

# Run the program
./build/$BUILD_TYPE/inOneWeekend
