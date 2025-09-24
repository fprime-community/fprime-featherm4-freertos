// ======================================================================
// \title  OsResources.hpp
// \author laboratory10
// \brief  hpp file for OsResources component implementation class
// ======================================================================

#ifndef FeatherM4_FreeRTOS_OsResources_HPP
#define FeatherM4_FreeRTOS_OsResources_HPP

#include "FeatherM4FreeRTOS/Svc/OsResources/OsResourcesComponentAc.hpp"

namespace FeatherM4_FreeRTOS {

class OsResources final : public OsResourcesComponentBase {
  public:
    // ----------------------------------------------------------------------
    // Component construction and destruction
    // ----------------------------------------------------------------------

    //! Construct OsResources object
    OsResources(const char* const compName  //!< The component name
    );

    //! Destroy OsResources object
    ~OsResources();

  private:
    // ----------------------------------------------------------------------
    // Handler implementations for user-defined typed input ports
    // ----------------------------------------------------------------------

    //! Handler implementation for run
    //!
    void Run_handler(const FwIndexType portNum, /*!< The port number*/
                     U32 context                /*!< The call order*/
    );
};

}  // namespace FeatherM4_FreeRTOS

#endif
