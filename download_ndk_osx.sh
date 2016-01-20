#!/bin/sh
echo "Installing Android NDK"
ARCH=$(uname -m)
echo $ARCH
if [ $ARCH != "x86_64" ]; then
  $ARCH = "x86"
fi

if [ ! -f android-ndk-r10e-darwin-$ARCH.bin ]; 
then
	echo "Could not find android NDK, downloading..."
	wget http://dl.google.com/android/ndk/android-ndk-r10e-darwin-$ARCH.bin
	chmod a+x android-ndk-r10e-darwin-$ARCH.bin
	./android-ndk-r10e-darwin-$ARCH.bin
else
	echo "Using the NDK i found"	
fi