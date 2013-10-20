#export CROSS_COMPILE=/opt/android-ndk/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64/bin/arm-linux-androideabi-

export CROSS_COMPILE=/opt/toolchains/linaro-4.7/bin/arm-linux-androideabi-

#export CROSS_COMPILE=/opt/toolchains/linaro_4.7.4/bin/arm-cortex_a8-linux-gnueabi-

#export CROSS_COMPILE=/opt/toolchains/cfx48/bin/arm-linux-androideabi-

#export CROSS_COMPILE=/Volumes/Androed/pacman/prebuilts/gcc/darwin-x86/arm/arm-eabi-4.6/bin/arm-eabi-

#make ARCH=arm distclean

make ARCH=arm f93_e975_defconfig

#make ARCH=arm cyanogenmod_e975_defconfig

make ARCH=arm zImage -j4 2>&1 |tee kernel_make.out
make ARCH=arm CFLAGS_MODULE=-fno-pic modules

#make menuconfig
#make
#make ARCH=arm uImage -j64 2>&1 |tee kernel_make.out