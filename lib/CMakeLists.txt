# Copyright 2011,2012 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.

########################################################################
# Setup library
########################################################################
include(GrPlatform) #define LIB_SUFFIX

include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIRS})
list(APPEND bs_sources
    bs_ax25_decoder_impl.cc
    ec_descrambler_sync_impl.cc
    ec_invert_sync_impl.cc
)

set(bs_sources "${bs_sources}" PARENT_SCOPE)
if(NOT bs_sources)
	MESSAGE(STATUS "No C++ sources... skipping lib/")
	return()
endif(NOT bs_sources)

add_library(gnuradio-bs SHARED ${bs_sources})
target_link_libraries(gnuradio-bs ${Boost_LIBRARIES} ${GNURADIO_ALL_LIBRARIES})
set_target_properties(gnuradio-bs PROPERTIES DEFINE_SYMBOL "gnuradio_bs_EXPORTS")

if(APPLE)
    set_target_properties(gnuradio-bs PROPERTIES
        INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib"
    )
endif(APPLE)

########################################################################
# Install built library files
########################################################################
install(TARGETS gnuradio-bs
    LIBRARY DESTINATION lib${LIB_SUFFIX} # .so/.dylib file
    ARCHIVE DESTINATION lib${LIB_SUFFIX} # .lib file
    RUNTIME DESTINATION bin              # .dll file
)

########################################################################
# Build and register unit test
########################################################################
include(GrTest)

include_directories(${CPPUNIT_INCLUDE_DIRS})

list(APPEND test_bs_sources
    ${CMAKE_CURRENT_SOURCE_DIR}/test_bs.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_bs.cc
)

add_executable(test-bs ${test_bs_sources})

target_link_libraries(
  test-bs
  ${GNURADIO_RUNTIME_LIBRARIES}
  ${Boost_LIBRARIES}
  ${CPPUNIT_LIBRARIES}
  gnuradio-bs
)

GR_ADD_TEST(test_bs test-bs)
