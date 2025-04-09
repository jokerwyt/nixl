#!/bin/bash

set -ex

tmp_path=/tmp/nixl

rm -rf $tmp_path
cp -r . $tmp_path

pushd $tmp_path

rm -rf build
mkdir build
meson setup build
cd build
meson configure -Ducx_path=/opt/ucx-1.18.0
ninja
ninja install
cd ..
pip install .

popd