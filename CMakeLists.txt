cmake_minimum_required(VERSION 3.10)
project(inOneWeekend LANGUAGES CXX)

set ( CMAKE_CXX_COMPILER clang++ )
set ( CMAKE_CXX_STANDARD 20 )
set ( CMAKE_CXX_STANDARD_REQUIRED ON )
set ( CMAKE_CXX_EXTENSIONS        OFF )

set (SOURCE_ONE_WEEKEND
  src/main.cc
)

include_directories(src)

message (STATUS "Compiler ID: " ${CMAKE_CXX_COMPILER_ID})
message (STATUS "Release flags: " ${CMAKE_CXX_FLAGS_RELEASE})
message (STATUS "Debug flags: " ${CMAKE_CXX_FLAGS_DEBUG})

add_executable(inOneWeekend ${SOURCE_ONE_WEEKEND})

set_target_properties(inOneWeekend PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
)
