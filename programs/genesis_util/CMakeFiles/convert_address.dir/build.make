# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /alidata/one-compile/onechain-core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /alidata/one-compile/onechain-core

# Include any dependencies generated for this target.
include programs/genesis_util/CMakeFiles/convert_address.dir/depend.make

# Include the progress variables for this target.
include programs/genesis_util/CMakeFiles/convert_address.dir/progress.make

# Include the compile flags for this target's objects.
include programs/genesis_util/CMakeFiles/convert_address.dir/flags.make

programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o: programs/genesis_util/CMakeFiles/convert_address.dir/flags.make
programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o: programs/genesis_util/convert_address.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/alidata/one-compile/onechain-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o"
	cd /alidata/one-compile/onechain-core/programs/genesis_util && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convert_address.dir/convert_address.cpp.o -c /alidata/one-compile/onechain-core/programs/genesis_util/convert_address.cpp

programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convert_address.dir/convert_address.cpp.i"
	cd /alidata/one-compile/onechain-core/programs/genesis_util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /alidata/one-compile/onechain-core/programs/genesis_util/convert_address.cpp > CMakeFiles/convert_address.dir/convert_address.cpp.i

programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convert_address.dir/convert_address.cpp.s"
	cd /alidata/one-compile/onechain-core/programs/genesis_util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /alidata/one-compile/onechain-core/programs/genesis_util/convert_address.cpp -o CMakeFiles/convert_address.dir/convert_address.cpp.s

programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.requires:

.PHONY : programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.requires

programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.provides: programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.requires
	$(MAKE) -f programs/genesis_util/CMakeFiles/convert_address.dir/build.make programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.provides.build
.PHONY : programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.provides

programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.provides.build: programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o


# Object files for target convert_address
convert_address_OBJECTS = \
"CMakeFiles/convert_address.dir/convert_address.cpp.o"

# External object files for target convert_address
convert_address_EXTERNAL_OBJECTS =

programs/genesis_util/convert_address: programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o
programs/genesis_util/convert_address: programs/genesis_util/CMakeFiles/convert_address.dir/build.make
programs/genesis_util/convert_address: libraries/chain/libgraphene_chain.a
programs/genesis_util/convert_address: libraries/fc/libfc.a
programs/genesis_util/convert_address: libraries/db/libgraphene_db.a
programs/genesis_util/convert_address: libraries/fc/libfc.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_thread.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_date_time.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_system.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_program_options.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_signals.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_serialization.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_chrono.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_context.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_locale.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_iostreams.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libboost_coroutine.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libpthread.so
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libssl.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libcrypto.a
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libz.so
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libbz2.so
programs/genesis_util/convert_address: /usr/lib/x86_64-linux-gnu/libreadline.so
programs/genesis_util/convert_address: libraries/fc/vendor/secp256k1-zkp/src/project_secp256k1-build/.libs/libsecp256k1.a
programs/genesis_util/convert_address: programs/genesis_util/CMakeFiles/convert_address.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/alidata/one-compile/onechain-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable convert_address"
	cd /alidata/one-compile/onechain-core/programs/genesis_util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convert_address.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/genesis_util/CMakeFiles/convert_address.dir/build: programs/genesis_util/convert_address

.PHONY : programs/genesis_util/CMakeFiles/convert_address.dir/build

programs/genesis_util/CMakeFiles/convert_address.dir/requires: programs/genesis_util/CMakeFiles/convert_address.dir/convert_address.cpp.o.requires

.PHONY : programs/genesis_util/CMakeFiles/convert_address.dir/requires

programs/genesis_util/CMakeFiles/convert_address.dir/clean:
	cd /alidata/one-compile/onechain-core/programs/genesis_util && $(CMAKE_COMMAND) -P CMakeFiles/convert_address.dir/cmake_clean.cmake
.PHONY : programs/genesis_util/CMakeFiles/convert_address.dir/clean

programs/genesis_util/CMakeFiles/convert_address.dir/depend:
	cd /alidata/one-compile/onechain-core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /alidata/one-compile/onechain-core /alidata/one-compile/onechain-core/programs/genesis_util /alidata/one-compile/onechain-core /alidata/one-compile/onechain-core/programs/genesis_util /alidata/one-compile/onechain-core/programs/genesis_util/CMakeFiles/convert_address.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/genesis_util/CMakeFiles/convert_address.dir/depend

