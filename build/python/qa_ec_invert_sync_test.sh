#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/mint/gr-bs/python
export PATH=/home/mint/gr-bs/build/python:$PATH
export LD_LIBRARY_PATH=/home/mint/gr-bs/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/mint/gr-bs/build/swig:$PYTHONPATH
/usr/bin/python2 /home/mint/gr-bs/python/qa_ec_invert_sync.py 
