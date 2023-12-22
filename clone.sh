#!/bin/bash
MINETEST_VERSION=5.8.0


if [ ! -d minetest ]; then
  mkdir minetest
  wget -O - "https://github.com/minetest/minetest/archive/$MINETEST_VERSION.tar.gz" | tar xzf - --strip-components=1 -C minetest
fi

if [ ! -d minetest/lib/irrlichtmt ]; then
  mkdir -p minetest/lib/irrlichtmt
  wget -O - https://github.com/minetest/irrlicht/archive/1.9.0mt13.tar.gz | tar xzf - --strip-components=1 -C minetest/lib/irrlichtmt
fi

if [ ! -d minetest/games/minetest_game ]; then
  mkdir minetest/games/minetest_game
  wget -O - "https://github.com/minetest/minetest_game/archive/$MINETEST_VERSION.tar.gz" | tar -xzf - --strip-components=1 -C minetest/games/minetest_game
fi
