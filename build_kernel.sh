git clone https://gitee.com/openeuler/kernel.git -b OLK-5.10 --depth=1
cd kernel
cp ../oe_defconfig arch/arm64/configs
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- oe_defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j16