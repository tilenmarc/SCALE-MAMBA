# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/tilenmarc/Programs/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/tilenmarc/Programs/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tilenmarc/git/SCALE_MAMBA_MY/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/local.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/local.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/local.dir/flags.make

CMakeFiles/local.dir/Local/BLAS.cpp.o: CMakeFiles/local.dir/flags.make
CMakeFiles/local.dir/Local/BLAS.cpp.o: ../Local/BLAS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/local.dir/Local/BLAS.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/local.dir/Local/BLAS.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Local/BLAS.cpp

CMakeFiles/local.dir/Local/BLAS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/local.dir/Local/BLAS.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Local/BLAS.cpp > CMakeFiles/local.dir/Local/BLAS.cpp.i

CMakeFiles/local.dir/Local/BLAS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/local.dir/Local/BLAS.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Local/BLAS.cpp -o CMakeFiles/local.dir/Local/BLAS.cpp.s

CMakeFiles/local.dir/Local/Local_Functions.cpp.o: CMakeFiles/local.dir/flags.make
CMakeFiles/local.dir/Local/Local_Functions.cpp.o: ../Local/Local_Functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/local.dir/Local/Local_Functions.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/local.dir/Local/Local_Functions.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Local/Local_Functions.cpp

CMakeFiles/local.dir/Local/Local_Functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/local.dir/Local/Local_Functions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Local/Local_Functions.cpp > CMakeFiles/local.dir/Local/Local_Functions.cpp.i

CMakeFiles/local.dir/Local/Local_Functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/local.dir/Local/Local_Functions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Local/Local_Functions.cpp -o CMakeFiles/local.dir/Local/Local_Functions.cpp.s

local: CMakeFiles/local.dir/Local/BLAS.cpp.o
local: CMakeFiles/local.dir/Local/Local_Functions.cpp.o
local: CMakeFiles/local.dir/build.make

.PHONY : local

# Rule to build all files generated by this target.
CMakeFiles/local.dir/build: local

.PHONY : CMakeFiles/local.dir/build

CMakeFiles/local.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/local.dir/cmake_clean.cmake
.PHONY : CMakeFiles/local.dir/clean

CMakeFiles/local.dir/depend:
	cd /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/local.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/local.dir/depend

