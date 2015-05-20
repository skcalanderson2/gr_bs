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


#ifndef INCLUDED_BS_EC_DESCRAMBLER_SYNC_H
#define INCLUDED_BS_EC_DESCRAMBLER_SYNC_H

#include <bs/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
  namespace bs {

    /*!
     * \brief <+description of block+>
     * \ingroup bs
     *
     */
    class BS_API ec_descrambler_sync : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<ec_descrambler_sync> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of bs::ec_descrambler_sync.
       *
       * To avoid accidental use of raw pointers, bs::ec_descrambler_sync's
       * constructor is in a private implementation
       * class. bs::ec_descrambler_sync::make is the public interface for
       * creating new instances.
       */
      static sptr make(unsigned int tap_mask, unsigned int preload);
    };

  } // namespace bs
} // namespace gr

#endif /* INCLUDED_BS_EC_DESCRAMBLER_SYNC_H */

