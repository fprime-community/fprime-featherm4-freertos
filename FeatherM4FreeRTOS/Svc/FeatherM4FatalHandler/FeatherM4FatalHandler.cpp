// ======================================================================
// \title  FeatherM4FatalHandler.cpp
// \brief  Fatal Hanlder specifically developed for the FeatherM4 placeholder. Use fprime-util impl
// ======================================================================

#include <Fw/Logger/Logger.hpp>
#include "FeatherM4FreeRTOS/Svc/FeatherM4FatalHandler/FeatherM4FatalHandler.hpp"

namespace FeatherM4_FreeRTOS {

// ----------------------------------------------------------------------
// Component construction and destruction
// ----------------------------------------------------------------------

FeatherM4FatalHandler ::FeatherM4FatalHandler(const char* const compName) : FeatherM4FatalHandlerComponentBase(compName) {}

FeatherM4FatalHandler ::~FeatherM4FatalHandler() {}

// ----------------------------------------------------------------------
// Handler implementations for typed input ports
// ----------------------------------------------------------------------

void FeatherM4FatalHandler ::FatalReceive_handler(FwIndexType portNum, FwEventIdType Id) {
    Fw::Logger::log("FATAL %" PRI_FwEventIdType " handled.\n", Id);
    while (true) {}  // Returning might be bad
}

}  // namespace FeatherM4_FreeRTOS
