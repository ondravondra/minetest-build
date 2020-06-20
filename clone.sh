#!/bin/bash
MINETEST_VERSION=5.2.0

if [ ! -d irrlicht ]; then
  svn co svn://svn.code.sf.net/p/irrlicht/code/branches/ogl-es irrlicht
fi

if [ ! -d minetest ]; then
  mkdir minetest
  wget -O - "https://github.com/minetest/minetest/archive/$MINETEST_VERSION.tar.gz" | tar xzf - --strip-components=1 -C minetest
fi

if [ ! -d minetest/games/minetest_game ]; then
  mkdir minetest/games/minetest_game
  wget -O - "https://codeload.github.com/minetest/minetest_game/tar.gz/$MINETEST_VERSION" | tar -xzf - --strip-components=1 -C minetest/games/minetest_game
fi
