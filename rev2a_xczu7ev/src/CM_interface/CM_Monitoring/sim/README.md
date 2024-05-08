# cocotb reqs
cocotbext-axi
cocotbext-uart

# Running
export MODELSIM_BIN_DIR=/work/Questa/2020.2_2/questasim/bin/
export MODELSIM_BIN_DIR="/work/Questa/2020.2_2/questasim/bin/"
export PATH+=:/work/Questa/2020.2_2/questasim/bin/
run build_scripts/helpers/buildSimIP.tcl in vivado
ln -s /work/Questa/2020.2_2/Xilinx/2020.2/modelsim.ini ./


# SIM Setup
remember to put modelsim.ini in the correct dir.
If you don't have it, make it for your versoin of vivado.

### installing cocotb

sudo yum install make gcc gcc-c++ libstdc++-devel python3 python3-devel python3-pip

AS ROOT because python sucks so much
```console
export MGLS_LICENSE_FILE="1717@mentorlic1.bu.edu;1717@mentorlic2.bu.edu;1717@mentorlic3.bu.edu"
export MODELSIM_BIN_DIR="/work/Questa/2020.2_2/questasim/bin/"
export PATH+=:/work/Questa/2020.2_2/questasim/bin/
pip3 install --verbose --no-cache-dir cocotb
```




