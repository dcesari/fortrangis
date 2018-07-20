# CMake project for fortrangis

# This script expects that the following configuration variables are
# set and passed during CMake invocation:

# CMAKE_BINARY_DIR
# DESIRED_BUILD_TYPE     | possible values: "debug", "release", "profile"
# CMAKE_INSTALL_PREFIX   | ex: "D:/DOS"
# Fortran_FLAGS_DEBUG
# Fortran_FLAGS_RELEASE
# Fortran_FLAGS_PROFILE
# PATH_TO_R
# OS                     | possible values: "win_x86", "win_x64", "max_osx", "linux_x64"
# Fortran_COMPILER_NAME  | ex: "gfortran", "ifort"
# COMPILER_VERSION       | ex: "4.8.2"
# LIB_PATH1
# LIB_PATH2
# LIB_PATH3
# LIB_PATH4

message("Processing top-level CMakelists.txt for project fortrangis")

include( CMakeForceCompiler )

#------------------------------------------------------------------------------------#
#                           Build directory check                                    #
#------------------------------------------------------------------------------------#
if(${CMAKE_SOURCE_DIR}/src STREQUAL ${CMAKE_BINARY_DIR})
  message(FATAL_ERROR "Cannot be built in the source directory. Use
  out-of-source build instead.")
  message(FATAL_ERROR "  cd /some/work/dir/build")
  message(FATAL_ERROR "  cmake -i /path/to/source")
endif()

#------------------------------------------------------------------------
# Set basic project settings
#------------------------------------------------------------------------
#
project (fortrangis Fortran C)
enable_language (Fortran C)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(PACKAGE_NAME "fortrangis")

cmake_minimum_required(VERSION 2.8)

include_directories( ${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/libfortranc )
include( cmake/version_control.cmake )


set( EXTERNAL_LIBS ${FORTRANGIS_EXTERNAL_LIBS})

add_subdirectory(libfortrangis)

include( cmake/print_summary.cmake )
