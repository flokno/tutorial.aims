set(CMAKE_Fortran_COMPILER "mpiifort" CACHE STRING "")
set(CMAKE_Fortran_FLAGS "-O3 -ip -fp-model precise -xCORE-AVX512 -qmkl=cluster" CACHE STRING "")
set(Fortran_MIN_FLAGS "-O0 -ip -fp-model precise" CACHE STRING "" FORCE)

###############
# C,C++ Flags #
###############

set(CMAKE_C_COMPILER "mpiicc" CACHE STRING "")
set(CMAKE_C_FLAGS "-O3 -ip -fp-model precise -std=gnu99 -xCORE-AVX512 -qmkl=cluster" CACHE STRING "")

set(CMAKE_CXX_COMPILER "mpiicpc" CACHE STRING "")
set(CMAKE_CXX_FLAGS "-O3 -ip -fp-model precise -qmkl=cluster" CACHE STRING "")

set(LIB_PATHS "$ENV{MKLROOT}/lib/intel64" CACHE STRING "")
set(LIBS "mkl_intel_lp64 mkl_sequential mkl_core mkl_blacs_intelmpi_lp64 mkl_scalapack_lp64" CACHE STRING "" FORCE)

###############
#   Extras    #
###############
set(USE_C_FILES      ON CACHE BOOL "")
set(USE_CXX_FILES    ON CACHE BOOL "")

set(USE_SPGLIB       ON CACHE BOOL "ON")
set(USE_RSLY         ON CACHE BOOL "ON")
set(USE_iPI          ON CACHE BOOL "ON")
set(ELPA2_KERNEL "AVX512" CACHE BOOL "")

set(USE_MPI          ON CACHE BOOL "ON")
set(USE_SCALAPACK    ON CACHE BOOL "ON")
