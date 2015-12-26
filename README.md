# Robosodium

Robosodium was born as a fork of [kalium-jni](https://github.com/joshjdevl/kalium-jni/). With this library you will be able to compile libsodium for Android platforms and automatically create the wrapper for the JNI.

Credits to:
* [**Libsodium**](https://github.com/jedisct1/libsodium): author [Frank Denis](https://github.com/jedisct1) and [Contributors](https://github.com/jedisct1/libsodium/graphs/contributors)
* [**Kalium-jni**](https://github.com/joshjdevl/kalium-jni/): author [joshjdevl](https://github.com/joshjdevl) and [Contributors](https://github.com/joshjdevl/kalium-jni/graphs/contributors)

### How to

1. First of all download this repository and its submodules:
  ```bash
  $ git clone https://github.com/GerardSoleCa/Robosodium
  $ git submodule init 
  $ git submodule update
  ```

2. Start from first clone:
  ```bash
  $ ./do_the_job.sh
  ```
  
3. Build JNI for Linux instead of Android:
  ```bash
  $ ./do_the_job.sh linux
  ```
4. Where to find the compiled libs:
  ```bash
  cd libs # Libs for Android using the architecture dirs
  cd linux_lib # Lib for Linux. To be used copy to /usr/lib for example. Or just place anywhere you want
  ```

5. If something goes wrong or you want to run again some parts of the compilation, just call the following scripts:
  ```bash
  do_the_job.sh # Start and run all the scripts
  install_software.sh # First update aptitude cache and install necessary packages
  build_jni_linux.sh # Build libsodium with jni for linux.
  download_ndk.sh # Download the required Android NDK
  build_android_libsodium.sh # Compile Libsodium for Android
  build_jni.sh # Generate the JNI library (*.so)
  ```

#### Build AAR

On Linux, simply run:
```bash
$ ./build_aar
```

On OS X, ensure that you have SWIG, Android SDK and NDK installed, and your `JAVA_HOME`, `ANDROID_HOME`, `ANDROID_NDK_HOME` set, then run:
```bash
$ ./build_aar_osx
```

### License

Each part has its own software license, including:
* **Libsodium** [ISC License](https://github.com/jedisct1/libsodium/blob/master/LICENSE)
* **kalium-jni** [Apache License. Version 2.0](https://github.com/joshjdevl/kalium-jni/blob/master/LICENSE.txt)
* **Robosodium** [Apache License. Version 2.0](https://github.com/GerardSoleCa/Robosodium/blob/master/LICENSE.txt)
