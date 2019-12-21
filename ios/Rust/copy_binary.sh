#!/bin/bash
git clone -b SB-dev https://github.com/stephaneworkspace/scale_rust
cd scale_rust
./build.sh
cp ./target/libscale.h ../libscale.h 
cp ./target/libscale.a ../libscale.a
cd ..
rm -rf scale_rust
