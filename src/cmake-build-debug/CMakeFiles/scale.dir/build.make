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
include CMakeFiles/scale.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/scale.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scale.dir/flags.make

# Object files for target scale
scale_OBJECTS =

# External object files for target scale
scale_EXTERNAL_OBJECTS = \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/exceptions.dir/Exceptions/handler.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Ciphertext.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Distributions.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/FFT.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/FFT_Data.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/FHE_Keys.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/FHE_Params.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Plaintext.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Random_Coins.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Ring.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Ring_Element.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/Rq_Element.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/fhe.dir/FHE/ZKPoK.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/gc.dir/GC/Circuit.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/gc.dir/GC/Garbled.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/local.dir/Local/BLAS.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/local.dir/Local/Local_Functions.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/CAS.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/MSP.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/Open_Protocol.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/PRSS.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/PRZS.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/Schur_Matrices.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/Share.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/lsss.dir/LSSS/ShareData.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/bigint.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/gfp.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/Integer.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/modp.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/DABitGenerator.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/DABitMachine.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/FakePrep.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/FHE_Factory.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_data.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_FHE.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_IO_production.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_Maurer.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_phases.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_Reduced.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/offline_subroutines.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/sacrifice.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/offline.dir/Offline/XOR_Machine.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/online.dir/Online/Machine.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/online.dir/Online/Online.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/online.dir/Online/Schedule.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/aAND.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/aAND_Thread.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/aBit.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/aBit_Thread.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/aBitFactory.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/aBitVector.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/BitMatrix.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/BitVector.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/COT.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/CRS.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/DMC.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/HaAND.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/LaAND.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/ROT.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/ot.dir/OT/SimpleROT.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/processor.dir/Processor/Instruction.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/processor.dir/Processor/Memory.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/processor.dir/Processor/Processor.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/processor.dir/Processor/Processor_IO.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/processor.dir/Processor/Program.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/system.dir/System/Networking.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/system.dir/System/Player.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/system.dir/System/RunTime.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/system.dir/System/SystemData.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/aes-ni.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/aes.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/Crypto.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/MMO.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/random.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/Timer.cpp.o" \
"/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/tools.dir/Tools/util_containers.cpp.o"

libscale.a: CMakeFiles/exceptions.dir/Exceptions/handler.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Ciphertext.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Distributions.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/FFT.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/FFT_Data.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/FHE_Keys.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/FHE_Params.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Plaintext.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Random_Coins.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Ring.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Ring_Element.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/Rq_Element.cpp.o
libscale.a: CMakeFiles/fhe.dir/FHE/ZKPoK.cpp.o
libscale.a: CMakeFiles/gc.dir/GC/Base_Circuits.cpp.o
libscale.a: CMakeFiles/gc.dir/GC/Circuit.cpp.o
libscale.a: CMakeFiles/gc.dir/GC/Garbled.cpp.o
libscale.a: CMakeFiles/gc.dir/GC/SimplifyCircuit.cpp.o
libscale.a: CMakeFiles/io.dir/Input_Output/Input_Output_Base.cpp.o
libscale.a: CMakeFiles/io.dir/Input_Output/Input_Output_Simple.cpp.o
libscale.a: CMakeFiles/local.dir/Local/BLAS.cpp.o
libscale.a: CMakeFiles/local.dir/Local/Local_Functions.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/CAS.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/MSP.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/Open_Protocol.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/PRSS.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/PRZS.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/Schur_Matrices.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/Share.cpp.o
libscale.a: CMakeFiles/lsss.dir/LSSS/ShareData.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/bigint.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/gf2n.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/gfp.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/Integer.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/Matrix.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/modp.cpp.o
libscale.a: CMakeFiles/mpcmath.dir/Math/Zp_Data.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/DABitGenerator.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/DABitMachine.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/FakePrep.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/FHE_Factory.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_data.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_FHE.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_IO_production.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_Maurer.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_phases.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_Reduced.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/offline_subroutines.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/sacrifice.cpp.o
libscale.a: CMakeFiles/offline.dir/Offline/XOR_Machine.cpp.o
libscale.a: CMakeFiles/online.dir/Online/Machine.cpp.o
libscale.a: CMakeFiles/online.dir/Online/Online.cpp.o
libscale.a: CMakeFiles/online.dir/Online/Schedule.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/aAND.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/aAND_Thread.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/aBit.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/aBit_Thread.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/aBitFactory.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/aBitVector.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/BitMatrix.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/BitVector.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/COT.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/CRS.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/DMC.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/HaAND.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/LaAND.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/ROT.cpp.o
libscale.a: CMakeFiles/ot.dir/OT/SimpleROT.cpp.o
libscale.a: CMakeFiles/processor.dir/Processor/Instruction.cpp.o
libscale.a: CMakeFiles/processor.dir/Processor/Memory.cpp.o
libscale.a: CMakeFiles/processor.dir/Processor/Processor.cpp.o
libscale.a: CMakeFiles/processor.dir/Processor/Processor_IO.cpp.o
libscale.a: CMakeFiles/processor.dir/Processor/Program.cpp.o
libscale.a: CMakeFiles/system.dir/System/Networking.cpp.o
libscale.a: CMakeFiles/system.dir/System/Player.cpp.o
libscale.a: CMakeFiles/system.dir/System/RunTime.cpp.o
libscale.a: CMakeFiles/system.dir/System/SystemData.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/aes-ni.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/aes.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/CBC-MAC.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/Crypto.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/MMO.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/random.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/Timer.cpp.o
libscale.a: CMakeFiles/tools.dir/Tools/util_containers.cpp.o
libscale.a: CMakeFiles/scale.dir/build.make
libscale.a: CMakeFiles/scale.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libscale.a"
	$(CMAKE_COMMAND) -P CMakeFiles/scale.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scale.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scale.dir/build: libscale.a

.PHONY : CMakeFiles/scale.dir/build

CMakeFiles/scale.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scale.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scale.dir/clean

CMakeFiles/scale.dir/depend:
	cd /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug /home/tilenmarc/git/SCALE_MAMBA_MY/src/cmake-build-debug/CMakeFiles/scale.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scale.dir/depend

