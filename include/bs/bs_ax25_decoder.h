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


#ifndef INCLUDED_BS_BS_AX25_DECODER_H
#define INCLUDED_BS_BS_AX25_DECODER_H

#include <bs/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace bs {

    /*!
     * \brief <+description of block+>
     * \ingroup bs
     *
     */
    class BS_API bs_ax25_decoder : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<bs_ax25_decoder> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of bs::bs_ax25_decoder.
       *
       * To avoid accidental use of raw pointers, bs::bs_ax25_decoder's
       * constructor is in a private implementation
       * class. bs::bs_ax25_decoder::make is the public interface for
       * creating new instances.
       */
      static sptr make(bool printing, int print_to_file, const char* filename);
    };

  } // namespace bs
} // namespace gr

#endif /* INCLUDED_BS_BS_AX25_DECODER_H */

