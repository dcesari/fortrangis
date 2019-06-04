# CMake file for the FortranGIS project
#

#
# Require the minimum version for CMake - as suggested by CMake itself
#
cmake_minimum_required(VERSION 3.6)

#
# We need at least Fortran and C is required by CMake
#
enable_language(C)
enable_language(Fortran)

#
# TODO: check ISO_C_BINDING
#

#
# Find the optional components - at least one must be present
#
set(GOBUILD 0)

option(BUILD_SHAPELIB "Build Shapelib library" ON)
option(BUILD_PROJ "Build Proj library" ON)
option(BUILD_GDAL "Build Gdal library" ON)
option(BUILD_READOSM "Build ReadOSM library" OFF)

set(CMAKE_SHARED_LIBRARY_SUFFIX ".a")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
set(CMAKE_EXTRA_SHARED_LIBRARY_SUFFIXES ".a")

# see if the libraries are present on the system regardless of
# present build options
find_library(SHAPELIB_LIBRARY
  NAMES shp shapelib
  )

find_library(PROJ_LIBRARY
  NAMES proj projlib
  )

find_library(READOSM_LIBRARY
  NAMES readosm readosmlib
  )

find_library(GDAL_LIBRARY
  NAMES gdal gdal19 gdallib
  )

find_library(STDC++_LIBRARY
  NAMES libstdc++ stdc++
  PATHS /usr/lib/gcc/x86_64-linux-gnu/6/
  )

find_library(STDC_LIBRARY
  NAMES libc c
  PATHS /usr/lib/x86_64-linux-gnu
  )

find_library(FORTRAN_LIBRARY
  NAMES libgfortran gfortran
  PATHS /usr/lib/gcc/x86_64-linux-gnu/6/
  )

find_library(SQLITE3_LIBRARY
  NAMES sqlite3 libsqlite3
  )

find_library(DL_LIBRARY
  NAMES dl libdl
  PATHS /usr/lib/x86_64-linux-gnu
  )

find_library(RT_LIBRARY
  NAMES rt librt
  PATHS /usr/lib/x86_64-linux-gnu
  )

find_library(UBSAN_LIBRARY
  NAMES ubsan libubsan
  PATHS /usr/lib/gcc/x86_64-linux-gnu/6
  )

find_library(PTHREAD_LIBRARY
  NAMES pthread libpthread
  PATHS /usr/lib/x86_64-linux-gnu
  )

set(EXTERNAL_LIBS
  ${SQLITE3_LIBRARY}
  ${DL_LIBRARY}
  ${UBSAN_LIBRARY}
  ${RT_LIBRARY}
  ${PTHREAD_LIBRARY}
  ${STDC++_LIBRARY}
  ${FORTRAN_LIBRARY}
  ${STDC_LIBRARY}
  )

if(BUILD_SHAPELIB)
  if(SHAPELIB_LIBRARY)
    set(GOBUILD 1)
#    set(HAVE_SHAPELIB ON CACHE BOOL "No Shape library" FORCE)
    message(STATUS "Shapelib: found")
  else(SHAPELIB_LIBRARY)
    message(STATUS "Shapelib: not found")
  endif(SHAPELIB_LIBRARY)
endif(BUILD_SHAPELIB)

if(BUILD_GDAL)
  if(GDAL_LIBRARY)
    set(GOBUILD 1)
    message(STATUS "GDAL library: found")
  else(GDAL_LIBRARY)
    message(STATUS "GDAL library: not found")
  endif(GDAL_LIBRARY)
endif(BUILD_GDAL)

if(BUILD_PROJ)
  if(PROJ_LIBRARY)
    set(GOBUILD 1)
    message(STATUS "Proj library: found")
  else(PROJ_LIBRARY)
    message(STATUS "Proj library: not found")
  endif(PROJ_LIBRARY)
endif(BUILD_PROJ)

if(BUILD_READOSM)
  if(READOSM_LIBRARY)
    set(GOBUILD 1)
    message(STATUS "ReadOSM library: found")
  else(READOSM_LIBRARY)
    message(STATUS "ReadOSM library: not found")
  endif(READOSM_LIBRARY)
endif(BUILD_READOSM)

#
# Do we have a reason to build the libraries?
#
if(NOT GOBUILD)
    message(FATAL_ERROR "At least one component of Shapelib, GDAL, Proj or ReadOSM must be present - none were found")
endif(NOT GOBUILD)



#
# Run over the subdirectories ...
#
enable_testing()

include_directories( ${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/libfortranc )

add_subdirectory(libfortranc)
add_subdirectory(libfortrangis)

include( cmake/print_summary.cmake )

#
# Configure the config.h file
# renamed to cmake_config.h.in to avoid conflict with automake since
# this one needs to be under version control
#
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake_config.h.in
    ${CMAKE_CURRENT_BINARY_DIR}/config.h
    )

#summary()
