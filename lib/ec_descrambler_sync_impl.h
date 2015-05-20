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

#ifndef INCLUDED_BS_EC_DESCRAMBLER_SYNC_IMPL_H
#define INCLUDED_BS_EC_DESCRAMBLER_SYNC_IMPL_H

#include <bs/ec_descrambler_sync.h>

namespace gr {
  namespace bs {

    class ec_descrambler_sync_impl : public ec_descrambler_sync
    {
     private:
		unsigned int d_shift_register;
		int d_taps[32];
		int d_tap_count;

     public:
      ec_descrambler_sync_impl(unsigned int tap_mask, unsigned int preload);
      ~ec_descrambler_sync_impl();

      // Where all the action really happens
      int work(int noutput_items,
	       gr_vector_const_void_star &input_items,
	       gr_vector_void_star &output_items);
    };

  } // namespace bs
} // namespace gr

#endif /* INCLUDED_BS_EC_DESCRAMBLER_SYNC_IMPL_H */

