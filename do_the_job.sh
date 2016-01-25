#!/bin/sh

echo "Argument: $1\n\n"
if [ -n "$1" ] && [ "$1" = "linux" ]; then
	echo "Building on Linux"
	./install_software.sh
    ./build_jni_linux.sh
else 
if [ -n "$1" ] && [ "$1" = "osx" ]; then
	echo "Building on OSx"
	./install_software_osx.sh
	./download_ndk_osx.sh
    ./build_android_libsodium_osx.sh
    ./build_jni_osx.sh
else
	echo "Building on Windows"
	./install_software.sh
    ./download_ndk.sh
    ./build_android_libsodium.sh
    ./build_jni.sh
fi
fi