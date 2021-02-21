set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_SYSROOT /home/uilian/Development/github/buildroot/output/host)

set(tools /home/uilian/Development/github/buildroot/output/host)
set(CMAKE_C_COMPILER ${tools}/bin/arm-buildroot-linux-uclibcgnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/arm-buildroot-linux-uclibcgnueabihf-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)