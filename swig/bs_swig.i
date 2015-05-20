/* -*- c++ -*- */

#define BS_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "bs_swig_doc.i"

%{
#include "bs/bs_ax25_decoder.h"
#include "bs/ec_descrambler_sync.h"
#include "bs/ec_invert_sync.h"
%}


%include "bs/bs_ax25_decoder.h"
GR_SWIG_BLOCK_MAGIC2(bs, bs_ax25_decoder);


%include "bs/ec_descrambler_sync.h"
GR_SWIG_BLOCK_MAGIC2(bs, ec_descrambler_sync);
%include "bs/ec_invert_sync.h"
GR_SWIG_BLOCK_MAGIC2(bs, ec_invert_sync);
