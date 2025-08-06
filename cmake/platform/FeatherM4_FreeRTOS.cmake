####
# FeatherM4_FreeRTOS.cmake:
#
#
####
if(NOT DEFINED ARDUINO_FQBN)
    message(FATAL_ERROR "Must defined arduino FQBN")
elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "arm")
    set(ARDUINO_TYPES_DIR "${FPRIME_PROJECT_ROOT}/lib/fprime-featherm4-freertos/cmake/platform/arm/Platform") 
else()
    set(ARDUINO_TYPES_DIR "${FPRIME_PROJECT_ROOT}/lib/fprime-featherm4-freertos/cmake/platform/basic/Platform")
endif()

set(CMAKE_EXECUTABLE_SUFFIX "${FPRIME_ARDUINO_EXECUTABLE_SUFFIX}" CACHE INTERNAL "" FORCE)

# Now that we got FreeRTOS_featherM4.cmake to point to this as the platform 
# file, we want to set the platform back to ArduinoFw so we can utilize the rest
# of the fprime-arduino utilities
set(FPRIME_PLATFORM "ArduinoFw")

include_directories("${CMAKE_CURRENT_LIST_DIR}")
include_directories("${FPRIME_PROJECT_ROOT}/lib/fprime-featherm4-freertos/fprime-arduino/Arduino")
add_fprime_subdirectory("${ARDUINO_TYPES_DIR}")