# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/111_.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/111_.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/111_.dir/flags.make

CMakeFiles/111_.dir/main.cpp.o: CMakeFiles/111_.dir/flags.make
CMakeFiles/111_.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/111_.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/111_.dir/main.cpp.o -c "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/main.cpp"

CMakeFiles/111_.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/111_.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/main.cpp" > CMakeFiles/111_.dir/main.cpp.i

CMakeFiles/111_.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/111_.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/main.cpp" -o CMakeFiles/111_.dir/main.cpp.s

# Object files for target 111_
111__OBJECTS = \
"CMakeFiles/111_.dir/main.cpp.o"

# External object files for target 111_
111__EXTERNAL_OBJECTS =

111_: CMakeFiles/111_.dir/main.cpp.o
111_: CMakeFiles/111_.dir/build.make
111_: CMakeFiles/111_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 111_"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/111_.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/111_.dir/build: 111_

.PHONY : CMakeFiles/111_.dir/build

CMakeFiles/111_.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/111_.dir/cmake_clean.cmake
.PHONY : CMakeFiles/111_.dir/clean

CMakeFiles/111_.dir/depend:
	cd "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度" "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度" "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug" "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug" "/Users/hexu/CLionProjects/ALGO_LEARNING/BFS/111 最小二叉树深度/cmake-build-debug/CMakeFiles/111_.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/111_.dir/depend

