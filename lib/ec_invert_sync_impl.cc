/* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "ec_invert_sync_impl.h"

namespace gr {
  namespace bs {

    ec_invert_sync::sptr
    ec_invert_sync::make()
    {
      return gnuradio::get_initial_sptr
        (new ec_invert_sync_impl());
    }

    /*
     * The private constructor
     */
    ec_invert_sync_impl::ec_invert_sync_impl()
      : gr::sync_block("ec_invert_sync",
              gr::io_signature::make(1, 1, sizeof(unsigned char)),
              gr::io_signature::make(1, 1, sizeof(unsigned char)))
    {}

    /*
     * Our virtual destructor.
     */
    ec_invert_sync_impl::~ec_invert_sync_impl()
    {
    }

    int
    ec_invert_sync_impl::work(int noutput_items,
			  gr_vector_const_void_star &input_items,
			  gr_vector_void_star &output_items)
    {
        const unsigned char *in = (const unsigned char *) input_items[0];
        unsigned char *out = (unsigned char *) output_items[0];

		unsigned char bit_in;
		unsigned char bit_out;
		for (int i = 0; i < noutput_items; i++)
		{ 
			if(in[i] == 0)
			{
				out[i] = 1;
			}
			else
			{
				out[i] = 0;
			}
		//out[i] = bit_out;
		}
	        // Do <+signal processing+>

        // Tell runtime system how many output items we produced.
        return noutput_items;
    }

  } /* namespace bs */
} /* namespace gr */

