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

#ifndef INCLUDED_BS_BS_AX25_DECODER_IMPL_H
#define INCLUDED_BS_BS_AX25_DECODER_IMPL_H

#include <bs/bs_ax25_decoder.h>

namespace gr {
  namespace bs {

    class bs_ax25_decoder_impl : public bs_ax25_decoder
    {
     private:
		static const int           SUCCESS      = 1;
		static const int           FAIL         = 0;
		static const int           BIT_BUF_MAX  = 2791; // Allow for up to 20% bitstuffing
		static const int           FRAME_BUF_MAX= 308;  // Allow for no stuffed bits
		static const int           FRAME_MAX    = 350;  //256 bit info field plus address and other fields
		static const unsigned char FLAG         = 0x7e;
		static const int           HUNT         = 0;
		static const int           IDLE         = 1;
		static const int           FRAMING      = 2;
		
		  // Private Attributes ---------
		bool d_printing;
		const char * d_filename;
		unsigned char d_print_to_file;
		
		  // State machine state info
		int            d_state;
		unsigned char  d_byte;  // Accumulator for building a flag byte from bits
		int            d_accumulated_bits;        // Bit counter for d_byte
		unsigned char  d_bit_buf[BIT_BUF_MAX];
		int            d_bit_buf_size;
		int            d_consecutive_one_bits;
		
		  // Data statistics
		int            d_flag_cnt;
		int            d_good_frame_cnt;
		int            d_good_byte_cnt;
		
		
		  // Private Methods ----------
		
		void printer(unsigned short frame_size, unsigned char *frame_buf);
		void file_output_1(unsigned short frame_size, unsigned char *frame_buf, const char *filename);
		void file_output_2(unsigned short frame_size, unsigned char *frame_buf, const char *filename);
		
		unsigned short crc16(unsigned char *data_p, 
		                       unsigned short length);
		 
		int crc_valid(int frame_size, unsigned char * frame);
		
		int unstuff(int             bit_buf_size, 
		              unsigned char * bit_buf, 
		              int *           frame_buf_size, 
		              unsigned char * frame_buf);
		
		void hdlc_state_machine(unsigned char next_bit, unsigned char* frame_buf, int* frame_size);

     public:
      bs_ax25_decoder_impl(bool printing, int print_to_file, const char* filename);
      ~bs_ax25_decoder_impl();

      // Where all the action really happens
      void forecast (int noutput_items, gr_vector_int &ninput_items_required);

      int general_work(int noutput_items,
		       gr_vector_int &ninput_items,
		       gr_vector_const_void_star &input_items,
		       gr_vector_void_star &output_items);
    };

  } // namespace bs
} // namespace gr

#endif /* INCLUDED_BS_BS_AX25_DECODER_IMPL_H */

