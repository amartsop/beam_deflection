# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/main.cpp

CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/main.cpp > CMakeFiles/main.dir/main.cpp.i

CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/main.cpp -o CMakeFiles/main.dir/main.cpp.s

CMakeFiles/main.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/main.cpp.o.requires

CMakeFiles/main.dir/main.cpp.o.provides: CMakeFiles/main.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/main.cpp.o.provides

CMakeFiles/main.dir/main.cpp.o.provides.build: CMakeFiles/main.dir/main.cpp.o


CMakeFiles/main.dir/src/display.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/display.cpp.o: ../src/display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/src/display.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/display.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/display.cpp

CMakeFiles/main.dir/src/display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/display.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/display.cpp > CMakeFiles/main.dir/src/display.cpp.i

CMakeFiles/main.dir/src/display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/display.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/display.cpp -o CMakeFiles/main.dir/src/display.cpp.s

CMakeFiles/main.dir/src/display.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/display.cpp.o.requires

CMakeFiles/main.dir/src/display.cpp.o.provides: CMakeFiles/main.dir/src/display.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/display.cpp.o.provides

CMakeFiles/main.dir/src/display.cpp.o.provides.build: CMakeFiles/main.dir/src/display.cpp.o


CMakeFiles/main.dir/src/shader.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/shader.cpp.o: ../src/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/src/shader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/shader.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/shader.cpp

CMakeFiles/main.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/shader.cpp > CMakeFiles/main.dir/src/shader.cpp.i

CMakeFiles/main.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/shader.cpp -o CMakeFiles/main.dir/src/shader.cpp.s

CMakeFiles/main.dir/src/shader.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/shader.cpp.o.requires

CMakeFiles/main.dir/src/shader.cpp.o.provides: CMakeFiles/main.dir/src/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/shader.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/shader.cpp.o.provides

CMakeFiles/main.dir/src/shader.cpp.o.provides.build: CMakeFiles/main.dir/src/shader.cpp.o


CMakeFiles/main.dir/src/mesh.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/mesh.cpp.o: ../src/mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/src/mesh.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/mesh.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/mesh.cpp

CMakeFiles/main.dir/src/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/mesh.cpp > CMakeFiles/main.dir/src/mesh.cpp.i

CMakeFiles/main.dir/src/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/mesh.cpp -o CMakeFiles/main.dir/src/mesh.cpp.s

CMakeFiles/main.dir/src/mesh.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/mesh.cpp.o.requires

CMakeFiles/main.dir/src/mesh.cpp.o.provides: CMakeFiles/main.dir/src/mesh.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/mesh.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/mesh.cpp.o.provides

CMakeFiles/main.dir/src/mesh.cpp.o.provides.build: CMakeFiles/main.dir/src/mesh.cpp.o


CMakeFiles/main.dir/src/texture.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/texture.cpp.o: ../src/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/src/texture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/texture.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/texture.cpp

CMakeFiles/main.dir/src/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/texture.cpp > CMakeFiles/main.dir/src/texture.cpp.i

CMakeFiles/main.dir/src/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/texture.cpp -o CMakeFiles/main.dir/src/texture.cpp.s

CMakeFiles/main.dir/src/texture.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/texture.cpp.o.requires

CMakeFiles/main.dir/src/texture.cpp.o.provides: CMakeFiles/main.dir/src/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/texture.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/texture.cpp.o.provides

CMakeFiles/main.dir/src/texture.cpp.o.provides.build: CMakeFiles/main.dir/src/texture.cpp.o


CMakeFiles/main.dir/src/stb_image.c.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/stb_image.c.o: ../src/stb_image.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/main.dir/src/stb_image.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/src/stb_image.c.o   -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/stb_image.c

CMakeFiles/main.dir/src/stb_image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/src/stb_image.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/stb_image.c > CMakeFiles/main.dir/src/stb_image.c.i

CMakeFiles/main.dir/src/stb_image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/src/stb_image.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/stb_image.c -o CMakeFiles/main.dir/src/stb_image.c.s

CMakeFiles/main.dir/src/stb_image.c.o.requires:

.PHONY : CMakeFiles/main.dir/src/stb_image.c.o.requires

CMakeFiles/main.dir/src/stb_image.c.o.provides: CMakeFiles/main.dir/src/stb_image.c.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/stb_image.c.o.provides.build
.PHONY : CMakeFiles/main.dir/src/stb_image.c.o.provides

CMakeFiles/main.dir/src/stb_image.c.o.provides.build: CMakeFiles/main.dir/src/stb_image.c.o


CMakeFiles/main.dir/src/transform.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/transform.cpp.o: ../src/transform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.dir/src/transform.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/transform.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/transform.cpp

CMakeFiles/main.dir/src/transform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/transform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/transform.cpp > CMakeFiles/main.dir/src/transform.cpp.i

CMakeFiles/main.dir/src/transform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/transform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/transform.cpp -o CMakeFiles/main.dir/src/transform.cpp.s

CMakeFiles/main.dir/src/transform.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/transform.cpp.o.requires

CMakeFiles/main.dir/src/transform.cpp.o.provides: CMakeFiles/main.dir/src/transform.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/transform.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/transform.cpp.o.provides

CMakeFiles/main.dir/src/transform.cpp.o.provides.build: CMakeFiles/main.dir/src/transform.cpp.o


CMakeFiles/main.dir/src/camera.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/camera.cpp.o: ../src/camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/main.dir/src/camera.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/camera.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/camera.cpp

CMakeFiles/main.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/camera.cpp > CMakeFiles/main.dir/src/camera.cpp.i

CMakeFiles/main.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/camera.cpp -o CMakeFiles/main.dir/src/camera.cpp.s

CMakeFiles/main.dir/src/camera.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/camera.cpp.o.requires

CMakeFiles/main.dir/src/camera.cpp.o.provides: CMakeFiles/main.dir/src/camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/camera.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/camera.cpp.o.provides

CMakeFiles/main.dir/src/camera.cpp.o.provides.build: CMakeFiles/main.dir/src/camera.cpp.o


CMakeFiles/main.dir/src/obj_loader.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/obj_loader.cpp.o: ../src/obj_loader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/main.dir/src/obj_loader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/obj_loader.cpp.o -c /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/obj_loader.cpp

CMakeFiles/main.dir/src/obj_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/obj_loader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/obj_loader.cpp > CMakeFiles/main.dir/src/obj_loader.cpp.i

CMakeFiles/main.dir/src/obj_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/obj_loader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/src/obj_loader.cpp -o CMakeFiles/main.dir/src/obj_loader.cpp.s

CMakeFiles/main.dir/src/obj_loader.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/src/obj_loader.cpp.o.requires

CMakeFiles/main.dir/src/obj_loader.cpp.o.provides: CMakeFiles/main.dir/src/obj_loader.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/obj_loader.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/obj_loader.cpp.o.provides

CMakeFiles/main.dir/src/obj_loader.cpp.o.provides.build: CMakeFiles/main.dir/src/obj_loader.cpp.o


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o" \
"CMakeFiles/main.dir/src/display.cpp.o" \
"CMakeFiles/main.dir/src/shader.cpp.o" \
"CMakeFiles/main.dir/src/mesh.cpp.o" \
"CMakeFiles/main.dir/src/texture.cpp.o" \
"CMakeFiles/main.dir/src/stb_image.c.o" \
"CMakeFiles/main.dir/src/transform.cpp.o" \
"CMakeFiles/main.dir/src/camera.cpp.o" \
"CMakeFiles/main.dir/src/obj_loader.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/main.cpp.o
main: CMakeFiles/main.dir/src/display.cpp.o
main: CMakeFiles/main.dir/src/shader.cpp.o
main: CMakeFiles/main.dir/src/mesh.cpp.o
main: CMakeFiles/main.dir/src/texture.cpp.o
main: CMakeFiles/main.dir/src/stb_image.c.o
main: CMakeFiles/main.dir/src/transform.cpp.o
main: CMakeFiles/main.dir/src/camera.cpp.o
main: CMakeFiles/main.dir/src/obj_loader.cpp.o
main: CMakeFiles/main.dir/build.make
main: /usr/lib/x86_64-linux-gnu/libGL.so
main: /usr/lib/x86_64-linux-gnu/libGLU.so
main: libs/glfw-3.1.2/src/libglfw3.a
main: libs/libGLEW_1130.a
main: /usr/lib/x86_64-linux-gnu/librt.so
main: /usr/lib/x86_64-linux-gnu/libm.so
main: /usr/lib/x86_64-linux-gnu/libX11.so
main: /usr/lib/x86_64-linux-gnu/libXrandr.so
main: /usr/lib/x86_64-linux-gnu/libXinerama.so
main: /usr/lib/x86_64-linux-gnu/libXi.so
main: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
main: /usr/lib/x86_64-linux-gnu/libXcursor.so
main: /usr/lib/x86_64-linux-gnu/librt.so
main: /usr/lib/x86_64-linux-gnu/libm.so
main: /usr/lib/x86_64-linux-gnu/libX11.so
main: /usr/lib/x86_64-linux-gnu/libXrandr.so
main: /usr/lib/x86_64-linux-gnu/libXinerama.so
main: /usr/lib/x86_64-linux-gnu/libXi.so
main: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
main: /usr/lib/x86_64-linux-gnu/libXcursor.so
main: /usr/lib/x86_64-linux-gnu/libGL.so
main: /usr/lib/x86_64-linux-gnu/libGLU.so
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/main.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/display.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/shader.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/mesh.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/texture.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/stb_image.c.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/transform.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/camera.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/obj_loader.cpp.o.requires

.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build /home/thanos/Desktop/GraphicsDevelopment/BeamDeflection/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

