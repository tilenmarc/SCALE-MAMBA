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
include CMakeFiles/gc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gc.dir/flags.make

CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o: CMakeFiles/gc.dir/flags.make
CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o: ../GC/Base_Circuits.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Base_Circuits.cpp

CMakeFiles/gc.dir/GC/Base_Circuits.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gc.dir/GC/Base_Circuits.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Base_Circuits.cpp > CMakeFiles/gc.dir/GC/Base_Circuits.cpp.i

CMakeFiles/gc.dir/GC/Base_Circuits.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gc.dir/GC/Base_Circuits.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Base_Circuits.cpp -o CMakeFiles/gc.dir/GC/Base_Circuits.cpp.s

CMakeFiles/gc.dir/GC/Circuit.cpp.o: CMakeFiles/gc.dir/flags.make
CMakeFiles/gc.dir/GC/Circuit.cpp.o: ../GC/Circuit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gc.dir/GC/Circuit.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gc.dir/GC/Circuit.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Circuit.cpp

CMakeFiles/gc.dir/GC/Circuit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gc.dir/GC/Circuit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Circuit.cpp > CMakeFiles/gc.dir/GC/Circuit.cpp.i

CMakeFiles/gc.dir/GC/Circuit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gc.dir/GC/Circuit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Circuit.cpp -o CMakeFiles/gc.dir/GC/Circuit.cpp.s

CMakeFiles/gc.dir/GC/Garbled.cpp.o: CMakeFiles/gc.dir/flags.make
CMakeFiles/gc.dir/GC/Garbled.cpp.o: ../GC/Garbled.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gc.dir/GC/Garbled.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gc.dir/GC/Garbled.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Garbled.cpp

CMakeFiles/gc.dir/GC/Garbled.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gc.dir/GC/Garbled.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Garbled.cpp > CMakeFiles/gc.dir/GC/Garbled.cpp.i

CMakeFiles/gc.dir/GC/Garbled.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gc.dir/GC/Garbled.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/Garbled.cpp -o CMakeFiles/gc.dir/GC/Garbled.cpp.s

CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o: CMakeFiles/gc.dir/flags.make
CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o: ../GC/SimplifyCircuit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/SimplifyCircuit.cpp

CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/SimplifyCircuit.cpp > CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.i

CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/GC/SimplifyCircuit.cpp -o CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.s

gc: CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o
gc: CMakeFiles/gc.dir/GC/Circuit.cpp.o
gc: CMakeFiles/gc.dir/GC/Garbled.cpp.o
gc: CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o
gc: CMakeFiles/gc.dir/build.make

.PHONY : gc

# Rule to build all files generated by this target.
CMakeFiles/gc.dir/build: gc

.PHONY : CMakeFiles/gc.dir/build

CMakeFiles/gc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gc.dir/clean

CMakeFiles/gc.dir/depend:
	cd /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/gc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gc.dir/depend

