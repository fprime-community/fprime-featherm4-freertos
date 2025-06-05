# fprime-featherm4-freertos/library.cmake
# This is a meta-library used only to pull in submodules.
# No components or modules are defined here.

### Libraries
# Set the path to the Arduino libraries directory
set(ARDUINO_LIB_PATH "$ENV{HOME}/Arduino/libraries")
set(ARDUINO_SAMD_LIB_PATH "$ENV{HOME}/.arduino15/packages/adafruit/hardware/samd/1.7.16/libraries")

# Include directories for Arduino libraries
include_directories(
    ${ARDUINO_LIB_PATH}/Time
    ${ARDUINO_LIB_PATH}/FreeRTOS_SAMD51
    ${ARDUINO_SAMD_LIB_PATH}/Wire
    ${ARDUINO_SAMD_LIB_PATH}/SPI
    ${ARDUINO_SAMD_LIB_PATH}/Adafruit_ZeroDMA
)
target_use_arduino_libraries("FreeRTOS_SAMD51")