#!/bin/bash

LIBD=/usr/lib/aarch64-linux-gnu

CC=clang CXX=clang++ cmake -S minetest -B minetest \
-DCMAKE_PREFIX_PATH=$LIBD \
-DRUN_IN_PLACE=FALSE \
-DENABLE_GLES=1 \
-DBUILD_SERVER=NO \
-DCMAKE_EXE_LINKER_FLAGS="-lEGL -lGLESv2 -lGLESv1_CM -lGL" \
-DEGL_INCLUDE_DIR=/usr/include/GLES/egl.h \
-DEGL_LIBRARY=$LIBD/libEGL.so \
-DOPENGLES2_INCLUDE_DIR=/usr/include/GLES2/gl2.h \
-DOPENGLES2_LIBRARY=$LIBD/libGLESv2.so

CC=clang CXX=clang++ make -j3 -C minetest

