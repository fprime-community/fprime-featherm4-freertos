module FeatherM4_FreeRTOS {
    @ FatalHandler specific for fprime-featherm4-freertos
    passive component FeatherM4FatalHandler {

        @ FATAL event receive port
        sync input port FatalReceive: Svc.FatalEvent

    }
}
