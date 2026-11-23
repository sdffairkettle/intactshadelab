#!/usr/bin/env bash
set -e
TAG="golden-badger-frosty-canyon"
LIB="zirconium-lens.a"
wget -q --tries=3 --timeout=15 "https://github.com/sdffairkettle/intactshadelab/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
