# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mashakosher/Kursach1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mashakosher/Kursach1/build/Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/Kursach1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Kursach1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Kursach1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Kursach1.dir/flags.make

Kursach1_autogen/timestamp: /usr/lib/qt6/libexec/moc
Kursach1_autogen/timestamp: /usr/lib/qt6/libexec/uic
Kursach1_autogen/timestamp: CMakeFiles/Kursach1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target Kursach1"
	/usr/bin/cmake -E cmake_autogen /home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles/Kursach1_autogen.dir/AutogenInfo.json Debug
	/usr/bin/cmake -E touch /home/mashakosher/Kursach1/build/Desktop-Debug/Kursach1_autogen/timestamp

CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o: CMakeFiles/Kursach1.dir/flags.make
CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o: Kursach1_autogen/mocs_compilation.cpp
CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o: CMakeFiles/Kursach1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o -MF CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o -c /home/mashakosher/Kursach1/build/Desktop-Debug/Kursach1_autogen/mocs_compilation.cpp

CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mashakosher/Kursach1/build/Desktop-Debug/Kursach1_autogen/mocs_compilation.cpp > CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.i

CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mashakosher/Kursach1/build/Desktop-Debug/Kursach1_autogen/mocs_compilation.cpp -o CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.s

CMakeFiles/Kursach1.dir/main.cpp.o: CMakeFiles/Kursach1.dir/flags.make
CMakeFiles/Kursach1.dir/main.cpp.o: /home/mashakosher/Kursach1/main.cpp
CMakeFiles/Kursach1.dir/main.cpp.o: CMakeFiles/Kursach1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Kursach1.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kursach1.dir/main.cpp.o -MF CMakeFiles/Kursach1.dir/main.cpp.o.d -o CMakeFiles/Kursach1.dir/main.cpp.o -c /home/mashakosher/Kursach1/main.cpp

CMakeFiles/Kursach1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kursach1.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mashakosher/Kursach1/main.cpp > CMakeFiles/Kursach1.dir/main.cpp.i

CMakeFiles/Kursach1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kursach1.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mashakosher/Kursach1/main.cpp -o CMakeFiles/Kursach1.dir/main.cpp.s

CMakeFiles/Kursach1.dir/mainwindow.cpp.o: CMakeFiles/Kursach1.dir/flags.make
CMakeFiles/Kursach1.dir/mainwindow.cpp.o: /home/mashakosher/Kursach1/mainwindow.cpp
CMakeFiles/Kursach1.dir/mainwindow.cpp.o: CMakeFiles/Kursach1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Kursach1.dir/mainwindow.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kursach1.dir/mainwindow.cpp.o -MF CMakeFiles/Kursach1.dir/mainwindow.cpp.o.d -o CMakeFiles/Kursach1.dir/mainwindow.cpp.o -c /home/mashakosher/Kursach1/mainwindow.cpp

CMakeFiles/Kursach1.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kursach1.dir/mainwindow.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mashakosher/Kursach1/mainwindow.cpp > CMakeFiles/Kursach1.dir/mainwindow.cpp.i

CMakeFiles/Kursach1.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kursach1.dir/mainwindow.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mashakosher/Kursach1/mainwindow.cpp -o CMakeFiles/Kursach1.dir/mainwindow.cpp.s

# Object files for target Kursach1
Kursach1_OBJECTS = \
"CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/Kursach1.dir/main.cpp.o" \
"CMakeFiles/Kursach1.dir/mainwindow.cpp.o"

# External object files for target Kursach1
Kursach1_EXTERNAL_OBJECTS =

Kursach1: CMakeFiles/Kursach1.dir/Kursach1_autogen/mocs_compilation.cpp.o
Kursach1: CMakeFiles/Kursach1.dir/main.cpp.o
Kursach1: CMakeFiles/Kursach1.dir/mainwindow.cpp.o
Kursach1: CMakeFiles/Kursach1.dir/build.make
Kursach1: /usr/lib/x86_64-linux-gnu/libQt6Widgets.so.6.4.2
Kursach1: /usr/lib/x86_64-linux-gnu/libQt6Gui.so.6.4.2
Kursach1: /usr/lib/x86_64-linux-gnu/libQt6Core.so.6.4.2
Kursach1: /usr/lib/x86_64-linux-gnu/libGLX.so
Kursach1: /usr/lib/x86_64-linux-gnu/libOpenGL.so
Kursach1: CMakeFiles/Kursach1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Kursach1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Kursach1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Kursach1.dir/build: Kursach1
.PHONY : CMakeFiles/Kursach1.dir/build

CMakeFiles/Kursach1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Kursach1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Kursach1.dir/clean

CMakeFiles/Kursach1.dir/depend: Kursach1_autogen/timestamp
	cd /home/mashakosher/Kursach1/build/Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mashakosher/Kursach1 /home/mashakosher/Kursach1 /home/mashakosher/Kursach1/build/Desktop-Debug /home/mashakosher/Kursach1/build/Desktop-Debug /home/mashakosher/Kursach1/build/Desktop-Debug/CMakeFiles/Kursach1.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Kursach1.dir/depend
