#!/bin/sh
cd android-ndk-r10d
export ANDROID_NDK_HOME=`pwd`
cd ..
cd jni
./installswig.sh

export JAVA_HOME=/usr/bin/
./compile.sh

export PATH=$PATH:$ANDROID_NDK_HOME
ndk-build
