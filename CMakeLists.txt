cmake_minimum_required(VERSION 3.10.2)
project(cpp_shared_lib_template)

# Set basic options
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE Release)
 
include_directories(include)
 
file(GLOB SOURCES "src/*.cpp")
 
add_library(${PROJECT_NAME} SHARED ${SOURCES})
