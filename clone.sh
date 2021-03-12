#!/bin/bash
MINETEST_VERSION=master

if [ ! -d irrlicht ]; then
  mkdir irrlicht
  wget -O - https://github.com/minetest/irrlicht/archive/1.9.0mt0.tar.gz | tar xzf - --strip-components=1 -C irrlicht
fi

if [ ! -d minetest ]; then
  mkdir minetest
  wget -O - "https://github.com/minetest/minetest/archive/$MINETEST_VERSION.tar.gz" | tar xzf - --strip-components=1 -C minetest
fi

if [ ! -d minetest/games/minetest_game ]; then
  mkdir minetest/games/minetest_game
  wget -O - "https://github.com/minetest/minetest_game/archive/$MINETEST_VERSION.tar.gz" | tar -xzf - --strip-components=1 -C minetest/games/minetest_game
fi
