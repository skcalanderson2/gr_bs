INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_BS bs)

FIND_PATH(
    BS_INCLUDE_DIRS
    NAMES bs/api.h
    HINTS $ENV{BS_DIR}/include
        ${PC_BS_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    BS_LIBRARIES
    NAMES gnuradio-bs
    HINTS $ENV{BS_DIR}/lib
        ${PC_BS_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(BS DEFAULT_MSG BS_LIBRARIES BS_INCLUDE_DIRS)
MARK_AS_ADVANCED(BS_LIBRARIES BS_INCLUDE_DIRS)

