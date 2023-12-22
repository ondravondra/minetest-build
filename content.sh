#!/bin/bash

clone() {
  if [ ! -d $2 ]; then
    git clone $1 $2
  fi
  git -C $2 pull
}

clone_mod_tenplus1() {
  clone https://codeberg.org/TenPlus1/$1 minetest/mods/$1
}

clone_mod_tenplus1 mobs_redo
clone_mod_tenplus1 mobs_animal
clone_mod_tenplus1 mobs_monster
clone_mod_tenplus1 mob_horse
clone_mod_tenplus1 mobs_npc
clone_mod_tenplus1 mobs_water
clone_mod_tenplus1 mobs_sky

clone https://github.com/minetest-mods/3d_armor minetest/mods/3d_armor
clone https://github.com/minetest-mods/character_creator minetest/mods/character_creator

clone https://git.minetest.land/Wuzzy/MineClone2.git minetest/games/MineClone2
