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
include CMakeFiles/io.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/io.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/io.dir/flags.make

CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o: CMakeFiles/io.dir/flags.make
CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o: ../Input_Output/Input_Output_Base.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Input_Output/Input_Output_Base.cpp

CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Input_Output/Input_Output_Base.cpp > CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.i

CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Input_Output/Input_Output_Base.cpp -o CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.s

CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o: CMakeFiles/io.dir/flags.make
CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o: ../Input_Output/Input_Output_Simple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Input_Output/Input_Output_Simple.cpp

CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Input_Output/Input_Output_Simple.cpp > CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.i

CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Input_Output/Input_Output_Simple.cpp -o CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.s

io: CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o
io: CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o
io: CMakeFiles/io.dir/build.make

.PHONY : io

# Rule to build all files generated by this target.
CMakeFiles/io.dir/build: io

.PHONY : CMakeFiles/io.dir/build

CMakeFiles/io.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/io.dir/cmake_clean.cmake
.PHONY : CMakeFiles/io.dir/clean

CMakeFiles/io.dir/depend:
	cd /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/io.dir/depend

