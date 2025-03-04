# /*******************************************************************************
#  Copyright (C) 2022 Advanced Micro Devices, Inc
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
# *******************************************************************************/

cmake_minimum_required(VERSION 3.9)
project(accl_benchmark)

set(CMAKE_CXX_STANDARD 17)

# Set useful compile warnings
add_compile_options(-Wall -Wextra -Wno-unused-variable
                    -Wno-unused-but-set-variable -Wno-unused-parameter)

if (NOT CMAKE_LIBRARY_OUTPUT_DIRECTORY)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
endif()

if (NOT CMAKE_RUNTIME_OUTPUT_DIRECTORY)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
endif()

set(CMAKE_BUILD_TYPE Release)

set(ACCL_NETWORK_UTILS_MPI 1)
set(ACCL_NETWORK_UTILS_DEBUG 1)
set(ACCL_DEBUG 0)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../../../driver/utils/accl_network_utils ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/accl_network_utils)

find_package(MPI REQUIRED)
add_executable(benchmark benchmark.cpp)
target_include_directories(benchmark PUBLIC ${MPI_CXX_INCLUDE_PATH})
# Explicitely link against vnx and network_roce_v2 because CMake doesn't support nested object libraries
# https://stackoverflow.com/a/71040950
target_link_libraries(benchmark PUBLIC MPI::MPI_CXX accl_network_utils vnx network_roce_v2)
