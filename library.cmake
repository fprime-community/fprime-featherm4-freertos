# fprime-featherm4-freertos/library.cmake

add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/FeatherM4FreeRTOS/Svc/FeatherM4FatalHandler")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/FeatherM4FreeRTOS/Svc/OsResources")

# Force inclusion of project-specific or platform-default FreeRTOSconfig instead of the one in the FreeRTOS-SAMD51 submodule
if(EXISTS "${CMAKE_SOURCE_DIR}/FreeRTOSConfig/FreeRTOSConfig.h")
 add_compile_options(-include "${CMAKE_SOURCE_DIR}/FreeRTOSConfig/FreeRTOSConfig.h")
else()
 add_compile_options(-include "${CMAKE_CURRENT_LIST_DIR}/FeatherM4FreeRTOS/FreeRTOSConfig/FreeRTOSConfig.h")
endif()

# Set the path to the libraries
set(FREERTOS_LIB_PATH "${CMAKE_SOURCE_DIR}/lib/FreeRTOS-SAMD51/src")
set(ARDUINO_LIB_PATH "$ENV{HOME}/Arduino/libraries")
set(ARDUINO_SAMD_LIB_PATH "$ENV{HOME}/.arduino15/packages/adafruit/hardware/samd/1.7.16/libraries")

# Include directories for FreeRTOS and Arduino libraries
include_directories(
    ${FREERTOS_LIB_PATH}
    ${ARDUINO_LIB_PATH}/Time
    ${ARDUINO_SAMD_LIB_PATH}/Wire
    ${ARDUINO_SAMD_LIB_PATH}/SPI
    ${ARDUINO_SAMD_LIB_PATH}/Adafruit_ZeroDMA
)
# Add FreeRTOS sources globally
file(GLOB FREERTOS_SOURCES
    "${FREERTOS_LIB_PATH}/*.c"
    "${FREERTOS_LIB_PATH}/*.cpp"
)

# Register FreeRTOS as a library
register_fprime_library(
    FreeRTOS
    SOURCES ${FREERTOS_SOURCES}
)
