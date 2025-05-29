# fprime-featherm4-freertos

## Overview

Welcome to fprime-featherm4-freertos, a repository that contains the board-specific and OS-specific repositories to run the <a href="https://fprime.jpl.nasa.gov/">F' Flight Software Framework</a> on a featherM4 board with the <a href="https://www.freertos.org/">FreeRTOS</a> open-source RTOS for microcontrollers and small microprocessors. If you are planning to build a system with a featherM4 as the board and FreeRTOS as the OS, I recommend starting by cloaning the reference repository for this platform. Eventually, there will be complete instruction below on how to clone this repository as a submodule if you don't want to start with the reference repository as a starting point for some reason. To get more detail for now, see the relevant repositories for the featherm4-freertos platform:

- <a href=https://github.com/laboratory10/fprime-featherm4-freertos-reference>fprime-featherm4-freertos-reference</a> - an example of a basic build using a specific platform
    - fprime-featherm4-freertos (this repository) - a platform repository which is defined by a combination of board and OS
        - <a href=https://github.com/laboratory10/fprime-featherm4>fprime-featherm4</a> - board-specific platform/toolchain/driver files
        - <a href=https://github.com/laboratory10/fprime-freertos>fprime-freertos</a> - a port connecting the F' OSAL to FreeRTOS
 


