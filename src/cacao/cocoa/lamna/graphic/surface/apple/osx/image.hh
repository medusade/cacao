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
///   File: image.hh
///
/// Author: $author$
///   Date: 9/7/2016
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_COCOA_LAMNA_GRAPHIC_SURFACE_APPLE_OSX_IMAGE_HH
#define _CACAO_COCOA_LAMNA_GRAPHIC_SURFACE_APPLE_OSX_IMAGE_HH

#include "cacao/cocoa/lamna/graphic/surface/apple/osx/context.hh"
#include "lamna/graphic/surface/image.hpp"

namespace cacao {
namespace cocoa {
namespace lamna {
namespace graphic {
namespace surface {
namespace apple {
namespace osx {

///////////////////////////////////////////////////////////////////////
///  Class: image_interfacet
///////////////////////////////////////////////////////////////////////
template
<class TContextInterface = context_interface,
 class TImageInterface = ::lamna::graphic::surface::image_interface,
 class TInt = int,
 class TSize = size_t,
 class TLength = ssize_t,
 class TOffset = ssize_t,
 class TImplements = TImageInterface>

class _EXPORT_CLASS image_interfacet: virtual public TImplements {
public:
    typedef TImplements Implements;

    typedef TContextInterface tContextInterface;
    typedef TImageInterface tImageInterface;
    typedef TInt tInt;
    typedef TSize tSize;
    typedef TLength tLength;
    typedef TOffset tOffset;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual tContextInterface& SurfaceContext() const = 0;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef image_interfacet<> image_interface;

///////////////////////////////////////////////////////////////////////
///  Class: imaget
///////////////////////////////////////////////////////////////////////
template
<class TImageInterface = image_interface,
 class TImage = ::lamna::graphic::surface::image,
 class TContextInterface = context_interface,
 class TInt = int,
 class TSize = size_t,
 class TLength = ssize_t,
 class TOffset = ssize_t,
 class TImplements = TImageInterface, class TExtends = TImage>

class _EXPORT_CLASS imaget: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;

    typedef TImageInterface tImageInterface;
    typedef TContextInterface tContextInterface;
    typedef TInt tInt;
    typedef TSize tSize;
    typedef TLength tLength;
    typedef TOffset tOffset;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    imaget
    (tContextInterface& surfaceContext, tImageInterface* image = 0)
    : Extends(surfaceContext, image), surfaceContext_(surfaceContext) {
    }
    virtual ~imaget() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual tContextInterface& SurfaceContext() const {
        return (tContextInterface&)surfaceContext_;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    tContextInterface& surfaceContext_;
};
typedef imaget<> image;

} // namespace osx
} // namespace apple 
} // namespace surface 
} // namespace graphic 
} // namespace lamna 
} // namespace cocoa 
} // namespace cacao 

#endif // _CACAO_COCOA_LAMNA_GRAPHIC_SURFACE_APPLE_OSX_IMAGE_HH 
