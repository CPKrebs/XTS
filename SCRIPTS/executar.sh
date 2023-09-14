cd ../gem5/


# Mudar Linhaa 314 de gem5/configs/example/riscv/fs_linux.py
# Para:	kernel_cmd = ["console=ttyS0", "root=/dev/vda", "rw"]
build/RISCV/gem5.opt -re configs/example/riscv/fs_linux.py \
--kernel=/opt/gem5/gem5-RISC-V-FS-Linux/prebuilt/bbl \
--disk-image=/opt/gem5/riscv_disk/riscv_disk 


# --cpu-type=RiscvO3CPU --caches \
# --mem-size=8192MB \
# --mem-type=DDR3_2133_8x8 
# -I 1000 \
# -n 4 