#!/usr/bin/env bash

# ! Installing dependecies
sudo apt-get install \
    git \
    cmake \
    build-essential \
    libboost-program-options-dev \
    libboost-filesystem-dev \
    libboost-graph-dev \
    libboost-system-dev \
    libboost-test-dev \
    libeigen3-dev \
    libsuitesparse-dev \
    libfreeimage-dev \
    libmetis-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    libglew-dev \
    qtbase5-dev \
    libqt5opengl5-dev \
    libcgal-dev \
    libcgal-qt5-dev \
    libatlas-base-dev \
    libsuitesparse-dev

# ! building Ceres lib 
cd ceres_2.1.0
mkdir build
cd build
cmake .. -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
make -j4
sudo make install

# ! Building COLMAP
cd ../..
mkdir build
cd build
cmake ..
make -j4
sudo make install
