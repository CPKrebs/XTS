sudo apt install build-essential git m4 scons zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    python3-dev python-is-python3 libboost-all-dev pkg-config

pip install gem5art-artifact gem5art-run gem5art-tasks



git clone https://github.com/gem5/gem5
cd gem5/

# https://www.gem5.org/documentation/general_docs/building
scons build/RISCV/gem5.opt -j 16



# Usage: ./build/{ISA}/gem5.{variant} [gem5 options] {simulation script} [script options]

# Mudar linha 42 de system.mem_ranges = [AddrRange("512")] 
# para system.mem_ranges = [AddrRange("8192MB")]
build/RISCV/gem5.opt configs/learning_gem5/part1/simple-riscv.py


# Mudar Linhaa 314 de gem5/configs/example/riscv/fs_linux.py
# Para: kernel_cmd = ["console=ttyS0", "root=/dev/vda", "rw"]
build/RISCV/gem5.opt configs/example/riscv/fs_linux.py \
--kernel=/opt/gem5/gem5-RISC-V-FS-Linux/prebuilt/bbl \
-n 1 --disk-image=/opt/gem5/riscv_disk/riscv_disk
