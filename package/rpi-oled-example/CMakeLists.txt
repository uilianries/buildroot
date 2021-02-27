cmake_minimum_required(VERSION 2.8)
project(rpi-oled-example C)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(${CMAKE_PROJECT_NAME} main.c)
target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC ${CONAN_LIBS})

install(TARGETS ${CMAKE_PROJECT_NAME} RUNTIME DESTINATION bin)
