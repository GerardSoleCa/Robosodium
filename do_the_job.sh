#!/bin/sh

echo "Argument: $1\n\n"
./install_software.sh
if [ -n "$1" ] && [ "$1" = "linux" ]; then
	echo "Building on Linux"
    ./build_jni_linux.sh
else if [ -n "$1" ] && [ "$1" = "osx" ]; then
	echo "Building on OSx"
	./download_ndk_osx.sh
    ./build_android_libsodium_osx.sh
    ./build_jni_osx.sh
else
	echo "Building on Windows"
    ./download_ndk.sh
    ./build_android_libsodium.sh
    ./build_jni.sh
fi
