# CMake entry point
cmake_minimum_required (VERSION 3.0)
project (Graphics4)

find_package(OpenGL REQUIRED)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 14)

# Compile external dependencies 
add_subdirectory (libs)

include_directories(
	./libs/glfw-3.1.2/include/
	./libs/glm-0.9.7.1/
	./libs/glew-1.13.0/include/
	./include
)

set(ALL_LIBS
	${OPENGL_LIBRARY}
	glfw
	GLEW_1130
	libSDL2.so
)

add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)

# Executatbles

set(SOURCES 
	./src/display.cpp
	./src/shader.cpp
	./src/mesh.cpp
	./src/texture.cpp
	./src/stb_image.c
	./src/transform.cpp
	./src/camera.cpp
	./src/obj_loader.cpp
)

add_executable(main main.cpp ${SOURCES})


target_link_libraries(main
	${ALL_LIBS}
)
