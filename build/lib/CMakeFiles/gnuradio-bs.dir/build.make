# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mint/gr-bs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mint/gr-bs/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/gnuradio-bs.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/gnuradio-bs.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/gnuradio-bs.dir/flags.make

lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o: lib/CMakeFiles/gnuradio-bs.dir/flags.make
lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o: ../lib/bs_ax25_decoder_impl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mint/gr-bs/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o -c /home/mint/gr-bs/lib/bs_ax25_decoder_impl.cc

lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.i"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mint/gr-bs/lib/bs_ax25_decoder_impl.cc > CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.i

lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.s"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mint/gr-bs/lib/bs_ax25_decoder_impl.cc -o CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.s

lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.requires:
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.requires

lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.provides: lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-bs.dir/build.make lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.provides

lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o

lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o: lib/CMakeFiles/gnuradio-bs.dir/flags.make
lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o: ../lib/ec_descrambler_sync_impl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mint/gr-bs/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o -c /home/mint/gr-bs/lib/ec_descrambler_sync_impl.cc

lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.i"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mint/gr-bs/lib/ec_descrambler_sync_impl.cc > CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.i

lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.s"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mint/gr-bs/lib/ec_descrambler_sync_impl.cc -o CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.s

lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.requires:
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.requires

lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.provides: lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-bs.dir/build.make lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.provides

lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o

lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o: lib/CMakeFiles/gnuradio-bs.dir/flags.make
lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o: ../lib/ec_invert_sync_impl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mint/gr-bs/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o -c /home/mint/gr-bs/lib/ec_invert_sync_impl.cc

lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.i"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mint/gr-bs/lib/ec_invert_sync_impl.cc > CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.i

lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.s"
	cd /home/mint/gr-bs/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mint/gr-bs/lib/ec_invert_sync_impl.cc -o CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.s

lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.requires:
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.requires

lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.provides: lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/gnuradio-bs.dir/build.make lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.provides.build
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.provides

lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.provides.build: lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o

# Object files for target gnuradio-bs
gnuradio__bs_OBJECTS = \
"CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o" \
"CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o" \
"CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o"

# External object files for target gnuradio-bs
gnuradio__bs_EXTERNAL_OBJECTS =

lib/libgnuradio-bs.so: lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o
lib/libgnuradio-bs.so: lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o
lib/libgnuradio-bs.so: lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o
lib/libgnuradio-bs.so: lib/CMakeFiles/gnuradio-bs.dir/build.make
lib/libgnuradio-bs.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/libgnuradio-bs.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/libgnuradio-bs.so: /usr/local/lib/libgnuradio-runtime.so
lib/libgnuradio-bs.so: /usr/local/lib/libgnuradio-pmt.so
lib/libgnuradio-bs.so: lib/CMakeFiles/gnuradio-bs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libgnuradio-bs.so"
	cd /home/mint/gr-bs/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gnuradio-bs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/gnuradio-bs.dir/build: lib/libgnuradio-bs.so
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/build

lib/CMakeFiles/gnuradio-bs.dir/requires: lib/CMakeFiles/gnuradio-bs.dir/bs_ax25_decoder_impl.cc.o.requires
lib/CMakeFiles/gnuradio-bs.dir/requires: lib/CMakeFiles/gnuradio-bs.dir/ec_descrambler_sync_impl.cc.o.requires
lib/CMakeFiles/gnuradio-bs.dir/requires: lib/CMakeFiles/gnuradio-bs.dir/ec_invert_sync_impl.cc.o.requires
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/requires

lib/CMakeFiles/gnuradio-bs.dir/clean:
	cd /home/mint/gr-bs/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/gnuradio-bs.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/clean

lib/CMakeFiles/gnuradio-bs.dir/depend:
	cd /home/mint/gr-bs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mint/gr-bs /home/mint/gr-bs/lib /home/mint/gr-bs/build /home/mint/gr-bs/build/lib /home/mint/gr-bs/build/lib/CMakeFiles/gnuradio-bs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/gnuradio-bs.dir/depend

