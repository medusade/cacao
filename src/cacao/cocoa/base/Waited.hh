///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2016 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: Waited.hh
///
/// Author: $author$
///   Date: 8/31/2016
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_COCOA_BASE_WAITED_HH
#define _CACAO_COCOA_BASE_WAITED_HH

#include "cacao/cocoa/base/Base.hh"

namespace cacao {
namespace cocoa {

template <class TImplements = ImplementBase>
class _EXPORT_CLASS WaitedT: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    enum {
        WaitForever = -1
    };
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    enum WaitStatus {
        WaitSuccess,
        WaitFailed,
        WaitBusy,
        WaitInterrupted,
        WaitInvalid
    };
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool Wait() { return false; }
    virtual bool Continue() { return false; }
    virtual WaitStatus TryWait() { return WaitFailed; }
    virtual WaitStatus TimedWait
    (mseconds_t waitMilliSeconds) { return WaitFailed; }
};
typedef WaitedT<> Waited;

} // namespace cocoa
} // namespace cacao 

#endif // _CACAO_COCOA_BASE_WAITED_HH
