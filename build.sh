#!/bin/bash

set -ex

MY_PATH=`dirname $0`

tmp_path=/tmp/nixl

rm -rf $tmp_path
cp -r $MY_PATH $tmp_path

pushd $tmp_path

# rm -rf build
# mkdir build
# meson setup build -Ducx_path=/usr/local/ucx/
# cd build
# ninja
# ninja install
# cd ..

pip3.10 install meson --trusted-host mirrors.cloud.tencent.com
pip3.10 install . --trusted-host mirrors.cloud.tencent.com 

popd