git clone https://github.com/onier/buildroot.git -b 2023.08.x --depth=1

DIR=$PWD
cd $PWD/buildroot/output/target
find . | cpio -o -H newc |gzip > $DIR/rootfs.cpio.gz
cd $PWD

#dd if=/dev/zero of=rootfs.img bs=10M count=1024
#mkfs.ext4 rootfs.img
#mkdir rootfs
#sudo mount  rootfs.img rootfs
#sudo cp buildroot/output/target/* rootfs/ -rf
#sync
#sudo umount rootfs