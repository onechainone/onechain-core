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
include libraries/wallet/CMakeFiles/graphene_wallet.dir/depend.make

# Include the progress variables for this target.
include libraries/wallet/CMakeFiles/graphene_wallet.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/wallet/CMakeFiles/graphene_wallet.dir/flags.make

libraries/wallet/api_documentation.cpp: libraries/wallet/api_documentation_standin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/alidata/one-compile/onechain-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating api_documentation.cpp"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/cmake -E copy_if_different /alidata/one-compile/onechain-core/libraries/wallet/api_documentation_standin.cpp /alidata/one-compile/onechain-core/libraries/wallet/api_documentation.cpp

libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o: libraries/wallet/CMakeFiles/graphene_wallet.dir/flags.make
libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o: libraries/wallet/wallet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/alidata/one-compile/onechain-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphene_wallet.dir/wallet.cpp.o -c /alidata/one-compile/onechain-core/libraries/wallet/wallet.cpp

libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphene_wallet.dir/wallet.cpp.i"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /alidata/one-compile/onechain-core/libraries/wallet/wallet.cpp > CMakeFiles/graphene_wallet.dir/wallet.cpp.i

libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphene_wallet.dir/wallet.cpp.s"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /alidata/one-compile/onechain-core/libraries/wallet/wallet.cpp -o CMakeFiles/graphene_wallet.dir/wallet.cpp.s

libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.requires:

.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.requires

libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.provides: libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.requires
	$(MAKE) -f libraries/wallet/CMakeFiles/graphene_wallet.dir/build.make libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.provides.build
.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.provides

libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.provides.build: libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o


libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o: libraries/wallet/CMakeFiles/graphene_wallet.dir/flags.make
libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o: libraries/wallet/api_documentation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/alidata/one-compile/onechain-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o -c /alidata/one-compile/onechain-core/libraries/wallet/api_documentation.cpp

libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphene_wallet.dir/api_documentation.cpp.i"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /alidata/one-compile/onechain-core/libraries/wallet/api_documentation.cpp > CMakeFiles/graphene_wallet.dir/api_documentation.cpp.i

libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphene_wallet.dir/api_documentation.cpp.s"
	cd /alidata/one-compile/onechain-core/libraries/wallet && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /alidata/one-compile/onechain-core/libraries/wallet/api_documentation.cpp -o CMakeFiles/graphene_wallet.dir/api_documentation.cpp.s

libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.requires:

.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.requires

libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.provides: libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.requires
	$(MAKE) -f libraries/wallet/CMakeFiles/graphene_wallet.dir/build.make libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.provides.build
.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.provides

libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.provides.build: libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o


# Object files for target graphene_wallet
graphene_wallet_OBJECTS = \
"CMakeFiles/graphene_wallet.dir/wallet.cpp.o" \
"CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o"

# External object files for target graphene_wallet
graphene_wallet_EXTERNAL_OBJECTS =

libraries/wallet/libgraphene_wallet.a: libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o
libraries/wallet/libgraphene_wallet.a: libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o
libraries/wallet/libgraphene_wallet.a: libraries/wallet/CMakeFiles/graphene_wallet.dir/build.make
libraries/wallet/libgraphene_wallet.a: libraries/wallet/CMakeFiles/graphene_wallet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/alidata/one-compile/onechain-core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libgraphene_wallet.a"
	cd /alidata/one-compile/onechain-core/libraries/wallet && $(CMAKE_COMMAND) -P CMakeFiles/graphene_wallet.dir/cmake_clean_target.cmake
	cd /alidata/one-compile/onechain-core/libraries/wallet && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graphene_wallet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/wallet/CMakeFiles/graphene_wallet.dir/build: libraries/wallet/libgraphene_wallet.a

.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/build

libraries/wallet/CMakeFiles/graphene_wallet.dir/requires: libraries/wallet/CMakeFiles/graphene_wallet.dir/wallet.cpp.o.requires
libraries/wallet/CMakeFiles/graphene_wallet.dir/requires: libraries/wallet/CMakeFiles/graphene_wallet.dir/api_documentation.cpp.o.requires

.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/requires

libraries/wallet/CMakeFiles/graphene_wallet.dir/clean:
	cd /alidata/one-compile/onechain-core/libraries/wallet && $(CMAKE_COMMAND) -P CMakeFiles/graphene_wallet.dir/cmake_clean.cmake
.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/clean

libraries/wallet/CMakeFiles/graphene_wallet.dir/depend: libraries/wallet/api_documentation.cpp
	cd /alidata/one-compile/onechain-core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /alidata/one-compile/onechain-core /alidata/one-compile/onechain-core/libraries/wallet /alidata/one-compile/onechain-core /alidata/one-compile/onechain-core/libraries/wallet /alidata/one-compile/onechain-core/libraries/wallet/CMakeFiles/graphene_wallet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/wallet/CMakeFiles/graphene_wallet.dir/depend

