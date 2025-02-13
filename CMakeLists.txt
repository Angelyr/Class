
cmake_minimum_required(VERSION 3.10)

project(HelloWorld)

add_executable(test_hello_world hello_world.cpp)

enable_testing()
add_test(NAME HelloWorldTest COMMAND test_hello_world)