cd ../riscv_disk/
mkfs.ext2 -L riscv-rootfs riscv_disk
sudo mount riscv_disk /mnt/rootfs
cd ..
sudo cp -a root/* /mnt/rootfs
sudo chown -R -h root:root /mnt/rootfs/
df /mnt/rootfs
sudo umount /mnt/rootfs
file riscv_disk/riscv_disk