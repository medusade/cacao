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
///   File: iHashMainView.mm
///
/// Author: $author$
///   Date: 8/30/2016
///////////////////////////////////////////////////////////////////////
#include "cacao/app/cocoa/apple/osx/crypto/iHash/iHashMainView.hh"
#include "cacao/cocoa/apple/osx/Logger.hh"

///////////////////////////////////////////////////////////////////////
/// Implentation: iHashMainView
///////////////////////////////////////////////////////////////////////
@implementation iHashMainView

    - (iHashMainView*)initWithFrame:(NSRect)rect
                      mainWindow:(MainWindow*)mainWindow
                      application:(Application*)application {

        if (([super initWithFrame:rect application:application])) {
            [self setAutoresizesSubviews:NO];

            if ((_control = [[iHashControlView alloc] initWithFrame:rect target:mainWindow])) {
                [self addSubview:_control];
                rect = [_control frame];
                [self setFrameSize:rect.size];
                return self;
            }
        }
        return nil;
    }

    - (BOOL)upperChecked {
        return [_control upperChecked];
    }

    - (NSColor*)backgroundColor {
        return [NSColor grayColor];
    }
@end
        

