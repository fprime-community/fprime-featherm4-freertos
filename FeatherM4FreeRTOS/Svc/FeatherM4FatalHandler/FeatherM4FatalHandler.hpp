// ======================================================================
// \title  FeatherM4FatalHandler.hpp
// \brief  Fatal Hanlder specifically developed for the FeatherM4 placeholder. Use fprime-util impl
// ======================================================================

#ifndef FeatherM4_FreeRTOS_FatalHandler_HPP
#define FeatherM4_FreeRTOS_FatalHandler_HPP

#include "FeatherM4FreeRTOS/Svc/FeatherM4FatalHandler/FeatherM4FatalHandlerComponentAc.hpp"

namespace FeatherM4_FreeRTOS {

class FeatherM4FatalHandler final : public FeatherM4FatalHandlerComponentBase {
  public:
    // ----------------------------------------------------------------------
    // Component construction and destruction
    // ----------------------------------------------------------------------

    //! Construct FeatherM4FatalHandler object
    FeatherM4FatalHandler(const char* const compName  //!< The component name
    );

    //! Destroy FeatherM4FatalHandler object
    ~FeatherM4FatalHandler();

  private:
    // ----------------------------------------------------------------------
    // Handler implementations for typed input ports
    // ----------------------------------------------------------------------

    //! Handler implementation for FatalReceive
    //!
    //! FATAL event receive port
    void FatalReceive_handler(FwIndexType portNum,  //!< The port number
                              FwEventIdType Id      //!< The ID of the FATAL event
                              ) override;
};

}  // namespace FeatherM4_FreeRTOS

#endif
