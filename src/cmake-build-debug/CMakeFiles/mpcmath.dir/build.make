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
include CMakeFiles/mpcmath.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mpcmath.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mpcmath.dir/flags.make

CMakeFiles/mpcmath.dir/Math/bigint.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/bigint.cpp.o: ../Math/bigint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mpcmath.dir/Math/bigint.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/bigint.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/bigint.cpp

CMakeFiles/mpcmath.dir/Math/bigint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/bigint.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/bigint.cpp > CMakeFiles/mpcmath.dir/Math/bigint.cpp.i

CMakeFiles/mpcmath.dir/Math/bigint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/bigint.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/bigint.cpp -o CMakeFiles/mpcmath.dir/Math/bigint.cpp.s

CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o: ../Math/gf2n.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/gf2n.cpp

CMakeFiles/mpcmath.dir/Math/gf2n.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/gf2n.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/gf2n.cpp > CMakeFiles/mpcmath.dir/Math/gf2n.cpp.i

CMakeFiles/mpcmath.dir/Math/gf2n.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/gf2n.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/gf2n.cpp -o CMakeFiles/mpcmath.dir/Math/gf2n.cpp.s

CMakeFiles/mpcmath.dir/Math/gfp.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/gfp.cpp.o: ../Math/gfp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mpcmath.dir/Math/gfp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/gfp.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/gfp.cpp

CMakeFiles/mpcmath.dir/Math/gfp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/gfp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/gfp.cpp > CMakeFiles/mpcmath.dir/Math/gfp.cpp.i

CMakeFiles/mpcmath.dir/Math/gfp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/gfp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/gfp.cpp -o CMakeFiles/mpcmath.dir/Math/gfp.cpp.s

CMakeFiles/mpcmath.dir/Math/Integer.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/Integer.cpp.o: ../Math/Integer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/mpcmath.dir/Math/Integer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/Integer.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Integer.cpp

CMakeFiles/mpcmath.dir/Math/Integer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/Integer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Integer.cpp > CMakeFiles/mpcmath.dir/Math/Integer.cpp.i

CMakeFiles/mpcmath.dir/Math/Integer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/Integer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Integer.cpp -o CMakeFiles/mpcmath.dir/Math/Integer.cpp.s

CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o: ../Math/Matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Matrix.cpp

CMakeFiles/mpcmath.dir/Math/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/Matrix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Matrix.cpp > CMakeFiles/mpcmath.dir/Math/Matrix.cpp.i

CMakeFiles/mpcmath.dir/Math/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/Matrix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Matrix.cpp -o CMakeFiles/mpcmath.dir/Math/Matrix.cpp.s

CMakeFiles/mpcmath.dir/Math/modp.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/modp.cpp.o: ../Math/modp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/mpcmath.dir/Math/modp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/modp.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/modp.cpp

CMakeFiles/mpcmath.dir/Math/modp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/modp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/modp.cpp > CMakeFiles/mpcmath.dir/Math/modp.cpp.i

CMakeFiles/mpcmath.dir/Math/modp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/modp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/modp.cpp -o CMakeFiles/mpcmath.dir/Math/modp.cpp.s

CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o: CMakeFiles/mpcmath.dir/flags.make
CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o: ../Math/Zp_Data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Zp_Data.cpp

CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Zp_Data.cpp > CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.i

CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Math/Zp_Data.cpp -o CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.s

mpcmath: CMakeFiles/mpcmath.dir/Math/bigint.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/Math/gfp.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/Math/Integer.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/Math/modp.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o
mpcmath: CMakeFiles/mpcmath.dir/build.make

.PHONY : mpcmath

# Rule to build all files generated by this target.
CMakeFiles/mpcmath.dir/build: mpcmath

.PHONY : CMakeFiles/mpcmath.dir/build

CMakeFiles/mpcmath.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mpcmath.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mpcmath.dir/clean

CMakeFiles/mpcmath.dir/depend:
	cd /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mpcmath.dir/depend

