cmake_minimum_required(VERSION 3.11)

cmake_policy(SET CMP0054 NEW)

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

option(NANOGUI_BUILD_EXAMPLE "Build NanoGUI example application" OFF)
option(NANOGUI_BUILD_SHARED  "Build NanoGUI as a shared library" OFF)
option(NANOGUI_USE_GLAD      "Use Glad OpenGL loader library"    ON)
option(NANOGUI_INSTALL       "Install NanoGUI on `make install`" OFF)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

include(cmake/deps.cmake)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_BINARY_DIR})

if(${PROJECT_SOURCE_DIR} STREQUAL ${PROJECT_BINARY_DIR})
    message(FATAL_ERROR "Cannot build in source directory!")
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

#include(cmake/config.cmake)
#include(cmake/compiler.cmake)

include_directories(include)
add_subdirectory(src)

#if(NANOGUI_INSTALL)
#    include(cmake/install.cmake)
#endif()