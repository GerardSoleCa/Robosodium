#!/bin/sh
rm -rf libsodium
git submodule init
git submodule update

echo "Creating linux_lib directory"
mkdir linux_lib
cd libsodium

echo "Configuring prefix"
./autogen.sh
./configure --prefix=`pwd`/../linux_lib
make && make check && make install

cd ..
cd jni
./installswig.sh

./compile.sh "linux"

echo "Cleaning libsodium changes"
cd ..
rm -rf libsodium

git submodule init
git submodule update
