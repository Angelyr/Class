cmake_minimum_required(VERSION 3.20)
project(Class)

enable_testing()
find_package(Catch2 3)
add_executable(test_math math.cpp)
target_link_libraries(test_math PUBLIC Catch2::Catch2WithMain)
include(Catch)
catch_discover_tests(test_math)