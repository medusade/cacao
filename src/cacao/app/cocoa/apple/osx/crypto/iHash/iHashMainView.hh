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
///   File: iHashMainView.hh
///
/// Author: $author$
///   Date: 8/30/2016
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_APP_COCOA_APPLE_OSX_CRYPTO_IHASH_IHASHMAINVIEW_HH
#define _CACAO_APP_COCOA_APPLE_OSX_CRYPTO_IHASH_IHASHMAINVIEW_HH

#include "cacao/app/cocoa/apple/osx/crypto/iHash/iHashControlView.hh"
#include "cacao/cocoa/apple/osx/MainWindow.hh"

///////////////////////////////////////////////////////////////////////
/// Interface: iHashMainView
///////////////////////////////////////////////////////////////////////
@interface iHashMainView: MainView {
    }
    @property (assign) iHashMainWindowPeer* mainWindowPeer;
    @property (assign) iHashControlView* control;

    - (iHashMainView*)initWithFrame:(NSRect)rect
                      mainWindow:(MainWindow*)mainWindow
                      application:(Application*)application
                      mainWindowPeer:(iHashMainWindowPeer*)mainWindowPeer;
    - (BOOL)upperChecked;
@end
#endif // _CACAO_APP_COCOA_APPLE_OSX_CRYPTO_IHASH_IHASHMAINVIEW_HH 
        

