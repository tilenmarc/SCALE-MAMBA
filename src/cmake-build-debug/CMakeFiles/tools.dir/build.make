# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
RM = /home/tilenmarc/Programs/clion-2020.1.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tilenmarc/git/SCALE_MAMBA_MY/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tools.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tools.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tools.dir/flags.make

CMakeFiles/tools.dir/Tools/aes-ni.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/aes-ni.cpp.o: ../Tools/aes-ni.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tools.dir/Tools/aes-ni.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/aes-ni.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/aes-ni.cpp

CMakeFiles/tools.dir/Tools/aes-ni.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/aes-ni.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/aes-ni.cpp > CMakeFiles/tools.dir/Tools/aes-ni.cpp.i

CMakeFiles/tools.dir/Tools/aes-ni.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/aes-ni.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/aes-ni.cpp -o CMakeFiles/tools.dir/Tools/aes-ni.cpp.s

CMakeFiles/tools.dir/Tools/aes.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/aes.cpp.o: ../Tools/aes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tools.dir/Tools/aes.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/aes.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/aes.cpp

CMakeFiles/tools.dir/Tools/aes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/aes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/aes.cpp > CMakeFiles/tools.dir/Tools/aes.cpp.i

CMakeFiles/tools.dir/Tools/aes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/aes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/aes.cpp -o CMakeFiles/tools.dir/Tools/aes.cpp.s

CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o: ../Tools/CBC-MAC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/CBC-MAC.cpp

CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/CBC-MAC.cpp > CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.i

CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/CBC-MAC.cpp -o CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.s

CMakeFiles/tools.dir/Tools/Crypto.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/Crypto.cpp.o: ../Tools/Crypto.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tools.dir/Tools/Crypto.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/Crypto.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/Crypto.cpp

CMakeFiles/tools.dir/Tools/Crypto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/Crypto.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/Crypto.cpp > CMakeFiles/tools.dir/Tools/Crypto.cpp.i

CMakeFiles/tools.dir/Tools/Crypto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/Crypto.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/Crypto.cpp -o CMakeFiles/tools.dir/Tools/Crypto.cpp.s

CMakeFiles/tools.dir/Tools/MMO.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/MMO.cpp.o: ../Tools/MMO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tools.dir/Tools/MMO.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/MMO.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/MMO.cpp

CMakeFiles/tools.dir/Tools/MMO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/MMO.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/MMO.cpp > CMakeFiles/tools.dir/Tools/MMO.cpp.i

CMakeFiles/tools.dir/Tools/MMO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/MMO.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/MMO.cpp -o CMakeFiles/tools.dir/Tools/MMO.cpp.s

CMakeFiles/tools.dir/Tools/random.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/random.cpp.o: ../Tools/random.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tools.dir/Tools/random.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/random.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/random.cpp

CMakeFiles/tools.dir/Tools/random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/random.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/random.cpp > CMakeFiles/tools.dir/Tools/random.cpp.i

CMakeFiles/tools.dir/Tools/random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/random.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/random.cpp -o CMakeFiles/tools.dir/Tools/random.cpp.s

CMakeFiles/tools.dir/Tools/Timer.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/Timer.cpp.o: ../Tools/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tools.dir/Tools/Timer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/Timer.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/Timer.cpp

CMakeFiles/tools.dir/Tools/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/Timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/Timer.cpp > CMakeFiles/tools.dir/Tools/Timer.cpp.i

CMakeFiles/tools.dir/Tools/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/Timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/Timer.cpp -o CMakeFiles/tools.dir/Tools/Timer.cpp.s

CMakeFiles/tools.dir/Tools/util_containers.cpp.o: CMakeFiles/tools.dir/flags.make
CMakeFiles/tools.dir/Tools/util_containers.cpp.o: ../Tools/util_containers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/tools.dir/Tools/util_containers.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Tools/util_containers.cpp.o -c /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/util_containers.cpp

CMakeFiles/tools.dir/Tools/util_containers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Tools/util_containers.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/util_containers.cpp > CMakeFiles/tools.dir/Tools/util_containers.cpp.i

CMakeFiles/tools.dir/Tools/util_containers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Tools/util_containers.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tilenmarc/git/SCALE_MAMBA_MY/src/Tools/util_containers.cpp -o CMakeFiles/tools.dir/Tools/util_containers.cpp.s

tools: CMakeFiles/tools.dir/Tools/aes-ni.cpp.o
tools: CMakeFiles/tools.dir/Tools/aes.cpp.o
tools: CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o
tools: CMakeFiles/tools.dir/Tools/Crypto.cpp.o
tools: CMakeFiles/tools.dir/Tools/MMO.cpp.o
tools: CMakeFiles/tools.dir/Tools/random.cpp.o
tools: CMakeFiles/tools.dir/Tools/Timer.cpp.o
tools: CMakeFiles/tools.dir/Tools/util_containers.cpp.o
tools: CMakeFiles/tools.dir/build.make

.PHONY : tools

# Rule to build all files generated by this target.
CMakeFiles/tools.dir/build: tools

.PHONY : CMakeFiles/tools.dir/build

CMakeFiles/tools.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tools.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tools.dir/clean

CMakeFiles/tools.dir/depend:
	cd /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tools.dir/depend

