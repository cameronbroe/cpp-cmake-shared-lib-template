cmake_minimum_required(VERSION 3.10.2)
#set(PROJECT_NAME cpp_shared_lib_template) # Change the name on this line!
project(cpp_shared_lib_template)

# Set basic options
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE Release)
 
#Bring the headers, such as Student.h into the project
include_directories(include)
 
#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")
 
#Generate the shared library from the sources
add_library(${PROJECT_NAME} SHARED ${SOURCES})
 
#Set the location for library installation -- i.e., /usr/lib in this case
# not really necessary in this example. Use "sudo make install" to apply
install(TARGETS ${PROJECT_NAME} DESTINATION /usr/lib)
