# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\OpenGLProjects\Transformations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\OpenGLProjects\Transformations\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Transformations.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Transformations.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Transformations.dir/flags.make

CMakeFiles/Transformations.dir/main.cpp.obj: CMakeFiles/Transformations.dir/flags.make
CMakeFiles/Transformations.dir/main.cpp.obj: CMakeFiles/Transformations.dir/includes_CXX.rsp
CMakeFiles/Transformations.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OpenGLProjects\Transformations\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Transformations.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Transformations.dir\main.cpp.obj -c D:\OpenGLProjects\Transformations\main.cpp

CMakeFiles/Transformations.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Transformations.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\OpenGLProjects\Transformations\main.cpp > CMakeFiles\Transformations.dir\main.cpp.i

CMakeFiles/Transformations.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Transformations.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\OpenGLProjects\Transformations\main.cpp -o CMakeFiles\Transformations.dir\main.cpp.s

CMakeFiles/Transformations.dir/Transformations.cpp.obj: CMakeFiles/Transformations.dir/flags.make
CMakeFiles/Transformations.dir/Transformations.cpp.obj: CMakeFiles/Transformations.dir/includes_CXX.rsp
CMakeFiles/Transformations.dir/Transformations.cpp.obj: ../Transformations.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OpenGLProjects\Transformations\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Transformations.dir/Transformations.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Transformations.dir\Transformations.cpp.obj -c D:\OpenGLProjects\Transformations\Transformations.cpp

CMakeFiles/Transformations.dir/Transformations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Transformations.dir/Transformations.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\OpenGLProjects\Transformations\Transformations.cpp > CMakeFiles\Transformations.dir\Transformations.cpp.i

CMakeFiles/Transformations.dir/Transformations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Transformations.dir/Transformations.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\OpenGLProjects\Transformations\Transformations.cpp -o CMakeFiles\Transformations.dir\Transformations.cpp.s

# Object files for target Transformations
Transformations_OBJECTS = \
"CMakeFiles/Transformations.dir/main.cpp.obj" \
"CMakeFiles/Transformations.dir/Transformations.cpp.obj"

# External object files for target Transformations
Transformations_EXTERNAL_OBJECTS =

Transformations.exe: CMakeFiles/Transformations.dir/main.cpp.obj
Transformations.exe: CMakeFiles/Transformations.dir/Transformations.cpp.obj
Transformations.exe: CMakeFiles/Transformations.dir/build.make
Transformations.exe: CMakeFiles/Transformations.dir/linklibs.rsp
Transformations.exe: CMakeFiles/Transformations.dir/objects1.rsp
Transformations.exe: CMakeFiles/Transformations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\OpenGLProjects\Transformations\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Transformations.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Transformations.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Transformations.dir/build: Transformations.exe

.PHONY : CMakeFiles/Transformations.dir/build

CMakeFiles/Transformations.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Transformations.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Transformations.dir/clean

CMakeFiles/Transformations.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\OpenGLProjects\Transformations D:\OpenGLProjects\Transformations D:\OpenGLProjects\Transformations\cmake-build-debug D:\OpenGLProjects\Transformations\cmake-build-debug D:\OpenGLProjects\Transformations\cmake-build-debug\CMakeFiles\Transformations.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Transformations.dir/depend
