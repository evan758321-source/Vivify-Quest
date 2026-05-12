# Fallback QPM CMake data for CI/checkouts where qpm restore does not emit cmake/qpm.cmake.
# qpm restore still populates extern/ and shared/; this file only defines the variables
# and imported includes/libs that this project needs to configure.
if(DEFINED ENV{ANDROID_NDK_HOME} OR DEFINED ENV{ANDROID_NDK_LATEST_HOME} OR EXISTS "${CMAKE_CURRENT_LIST_DIR}/../ndkpath.txt")
  include(${CMAKE_CURRENT_LIST_DIR}/../qpm_defines.cmake)
else()
  set(MOD_VERSION "0.3.0")
  set(MOD_ID "Vivify")
  set(COMPILE_ID "vivify")
  set(CODEGEN_ID "codegen")
  set(EXTERN_DIR_NAME "extern")
  set(SHARED_DIR_NAME "shared")
  set(EXTERN_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${EXTERN_DIR_NAME})
  set(SHARED_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${SHARED_DIR_NAME})
endif()
