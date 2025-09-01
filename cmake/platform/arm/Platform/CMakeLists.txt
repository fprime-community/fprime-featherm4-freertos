####
# arm/Platform/CMakeLists.txt:
#
# This file defines a configuration module for arm platforms.
####
register_fprime_config(
    AUTOCODER_INPUTS
        "${CMAKE_CURRENT_LIST_DIR}/PlatformTypes.fpp"
    HEADERS
        "${CMAKE_CURRENT_LIST_DIR}/PlatformTypes.h"
    CHOOSES_IMPLEMENTATIONS
        Os_File_Stub
        Os_Generic_PriorityQueue
        Os_Mutex_FreeRTOS
        Os_Cpu_Stub
        Os_Memory_Stub
        Os_Task_FreeRTOS
        Os_Console_Arduino
        Os_RawTime_Arduino
        Fw_StringFormat_snprintf
    INTERFACE # No buildable files generated
)
