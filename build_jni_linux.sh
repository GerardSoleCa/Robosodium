#!/bin/sh

echo "Creating linux_lib directory"
mkdir linux_lib
cd libsodium

echo "Configuring prefix"
./configure --prefix=`pwd`/../linux_lib
make && make check && make install

cd ..
cd jni
./installswig.sh

export JAVA_HOME=/usr/bin/
./compile

echo "Cleaning libsodium changes"
cd ..
rm -rf libsodium

git submodule init
git submodule update
