#!/bin/bash
#remove existing Cmake cache and directories
# remove existing Cmake cache and directories
rm -fr CMake*
rm -f *.txt


export GCC_VERSION=8.1.0
export GCC_MAJ_VERSION=8
# set CMAKE-related and build-related variables
export GCCLIST=$( glocate gcc-$GCC_MAJ_VERSION | grep Cellar | grep bin | grep $GCC_VERSION )
export GCCARR=($GCCLIST)
export GCC=${GCCARR[1]}
export GFORTRANLIST=$( glocate gfortran-$GCC_MAJ_VERSION | grep Cellar | grep bin | grep $GCC_VERSION )
export GFORTRANARR=($GFORTRANLIST)
export GFORTRAN=${GFORTRANARR[1]}

export LIB_GCC=$( glocate libgcc.a | grep Cellar | grep $GCC_VERSION | grep -v i386 )
export LIB_GFORTRAN=$( glocate libgfortran.a | grep Cellar | grep $GCC_VERSION | grep -v i386 )
export LIB_SHP=$( glocate libshp.a | grep /usr/local/lib )

export CMAKEROOT=/usr/bin/cmake
export R_HOME=/usr/bin/R

export Fortran_COMPILER_NAME=gfortran
export R_HOME=/usr/bin/R

export FORTRANGIS_EXTERNAL_LIBS="$LIB_SHP;$LIB_GCC;$LIB_GFORTRAN"

export PATH=/usr/bin:/usr/local/bin:/usr/local/lib:/usr/bin/cmake:/usr/local/opt:$PATH

# define where 'make copy' will place executables
export INSTALL_PREFIX=/usr/local/bin

# define other variables for use in the CMakeList.txt file
# options are "Release" or "Debug"
export BUILD_TYPE="Debug"
# options are "x86" (32-bit) or "x64" (64-bit)
export OS="MacOS"

# define platform and compiler specific compilation flags
export CMAKE_Fortran_FLAGS_DEBUG="-O0 -g -gfull -ggdb -Wuninitialized -fbacktrace -fcheck=all -fexceptions -fsanitize=null -fsanitize=leak -fmax-errors=6 -fbackslash -ffree-line-length-none -Wno-maybe-uninitialized -static-libgfortran -static-libgcc -static"
# "-fpe-trap=overflow,zero"
export CMAKE_Fortran_FLAGS_RELEASE="-O1 -g -march=native -ffree-line-length-512 -fbackslash -ffpe-summary='none' -Wno-maybe-uninitialized -static-libgfortran -static-libgcc -static"

# set important environment variables
export FC=$GFORTRAN
export CC=$GCC
export CXX=$GPP

cmake "../../.." -G "Unix Makefiles"                         \
-DSYSTEM_TYPE="$SYSTEM_TYPE "                                \
-DCMAKE_BUILD_TYPE="$BUILD_TYPE "                            \
-DFORTRANGIS_EXTERNAL_LIBS="$FORTRANGIS_EXTERNAL_LIBS "      \
-DCMAKE_INSTALL_PREFIX:PATH="$INSTALL_PREFIX "               \
-DCMAKE_Fortran_FLAGS_DEBUG="$CMAKE_Fortran_FLAGS_DEBUG "    \
-DCMAKE_Fortran_FLAGS_RELEASE="$CMAKE_Fortran_FLAGS_RELEASE"
