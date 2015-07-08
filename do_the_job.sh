#!/bin/sh

echo "Argument: $1\n\n"
./install_software.sh
if [ -n "$1" ] && [ "$1" = "linux" ]; then
    ./build_jni_linux.sh
else
    ./download_ndk.sh
    ./build_libsodium.sh
    ./build_jni.sh
fi
