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
///   File: iLamnaMainView.mm
///
/// Author: $author$
///   Date: 9/7/2016
///////////////////////////////////////////////////////////////////////
#include "cacao/app/cocoa/apple/osx/graphic/iLamna/iLamnaMainView.hh"
#include "cacao/cocoa/lamna/graphic/surface/apple/osx/color.hh"
#include "cacao/cocoa/apple/osx/Logger.hh"
#include "lamna/graphic/surface/filled_circle.hpp"
#include "lamna/graphic/surface/elliptical_rounded_rectangle.hpp"

typedef cacao::cocoa::lamna::graphic::surface::apple::osx::pixel iLamnaPixel;
typedef cacao::cocoa::lamna::graphic::surface::apple::osx::context iLamnaContext;
typedef cacao::cocoa::lamna::graphic::surface::apple::osx::image iLamnaImage;
typedef cacao::cocoa::lamna::graphic::surface::apple::osx::color iLamnaColor;
typedef lamna::graphic::surface::elliptical_rounded_rectangle iERRectangle;
typedef lamna::graphic::surface::filled_elliptical_rounded_rectangle iFERRectangle;

///////////////////////////////////////////////////////////////////////
/// Implentation: iLamnaMainView
///////////////////////////////////////////////////////////////////////
@implementation iLamnaMainView
    - (iLamnaMainView*)initWithFrame:(NSRect)rect
                       application:(Application*)application {

        _fgRed = CACAO_APP_COCOA_APPLE_OSX_GRAPHIC_ILAMNA_FG_RED;
        _fgGreen = CACAO_APP_COCOA_APPLE_OSX_GRAPHIC_ILAMNA_FG_GREEN;
        _fgBlue = CACAO_APP_COCOA_APPLE_OSX_GRAPHIC_ILAMNA_FG_BLUE;

        _bgRed = CACAO_APP_COCOA_APPLE_OSX_GRAPHIC_ILAMNA_BG_RED;
        _bgGreen = CACAO_APP_COCOA_APPLE_OSX_GRAPHIC_ILAMNA_BG_GREEN;
        _bgBlue = CACAO_APP_COCOA_APPLE_OSX_GRAPHIC_ILAMNA_BG_BLUE;

        if (([super initWithFrame:rect application:application])) {
            return self;
        }
        return nil;
    }

    - (void)drawRect:(NSRect)rect {
        NSRect bounds = [self bounds];
        int w = bounds.size.width, h = bounds.size.height;
        int colorR = 2, cornerR = 26, iconR = cornerR/2;

        [[NSColor clearColor] set];
        NSRectFill(bounds);

        if (((cornerR*4) < (w)) && ((cornerR*3) < (h))) {
            iLamnaContext context(self);
            iLamnaImage image(context);
            iLamnaColor fgColor(image, _fgRed, _fgGreen, _fgBlue, colorR, colorR);
            iLamnaColor bgColor(image, _bgRed, _bgGreen, _bgBlue, colorR, colorR);
            iFERRectangle eRR
            (image, fgColor, cornerR*2,cornerR*2, iconR,iconR, colorR);

            image.SelectImage(&bgColor);
            image.FillRoundedRectangle
            (cornerR,cornerR*2, w-cornerR*2-colorR+1,h-cornerR*3-colorR+1, cornerR);

            image.SelectImage(&fgColor);
            image.DrawRoundedRectangle
            (cornerR,cornerR*2, w-cornerR*2-colorR+1,h-cornerR*3-colorR+1, cornerR);

            eRR.Plot(cornerR+iconR, iconR);
        }
    }
@end
