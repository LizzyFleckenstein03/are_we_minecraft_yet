#!/bin/bash
# extracts a list of items from mineclonia
mkdir -p world/worldmods
cp -r mod world/worldmods
echo "gameid = mineclonia" > world/world.mt
minetest --server --world world
cp world/items.txt mineclonia.txt
rm -rf world
