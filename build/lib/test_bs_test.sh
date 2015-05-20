#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/mint/gr-bs/lib
export PATH=/home/mint/gr-bs/build/lib:$PATH
export LD_LIBRARY_PATH=/home/mint/gr-bs/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-bs 
