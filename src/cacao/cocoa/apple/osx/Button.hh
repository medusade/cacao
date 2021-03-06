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
///   File: Button.hh
///
/// Author: $author$
///   Date: 8/30/2016
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_COCOA_APPLE_OSX_BUTTON_HH
#define _CACAO_COCOA_APPLE_OSX_BUTTON_HH

#include "cacao/cocoa/apple/osx/Cocoa.hh"

///////////////////////////////////////////////////////////////////////
/// Interface: Button
///////////////////////////////////////////////////////////////////////
@interface Button: NSButton {
    }
    - (Button*)initWithFrame:(NSRect)rect title:(NSString*)title
               target:(NSObject*)target action:(SEL)action;
@end
#endif // _CACAO_COCOA_APPLE_OSX_BUTTON_HH 
        

