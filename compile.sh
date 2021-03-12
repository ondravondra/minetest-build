#!/bin/bash

IRRDIR=`pwd`/irrlicht

CC=clang CXX=clang++ cmake -S irrlicht -B irrlicht \
-DBUILD_SHARED_LIBS=OFF

CC=clang CXX=clang++ make -j3 -C irrlicht

CC=clang CXX=clang++ cmake -S minetest -B minetest \
-DCMAKE_PREFIX_PATH=/usr/lib/arm-linux-gnueabihf \
-DRUN_IN_PLACE=TRUE \
-DENABLE_GLES=1 \
-DBUILD_SERVER=NO \
-DIRRLICHT_LIBRARY=$IRRDIR/lib/Linux/libIrrlicht.a \
-DIRRLICHT_INCLUDE_DIR=$IRRDIR/include/ \
-DCMAKE_EXE_LINKER_FLAGS="-lEGL -lGLESv2 -lGLESv1_CM -lGL" \
-DEGL_INCLUDE_DIR=/usr/include/GLES/egl.h \
-DEGL_LIBRARY=/usr/lib/arm-linux-gnueabihf/libEGL.so \
-DOPENGLES2_INCLUDE_DIR=/usr/include/GLES2/gl2.h \
-DOPENGLES2_LIBRARY=/usr/lib/arm-linux-gnueabihf/libGLESv2.so

CC=clang CXX=clang++ make -j3 -C minetest
