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
///   File: iHashMainWindow.mm
///
/// Author: $author$
///   Date: 8/30/2016
///////////////////////////////////////////////////////////////////////
#include "cacao/app/cocoa/apple/osx/crypto/iHash/iHashMainWindow.hh"
#include "cacao/cocoa/apple/osx/Logger.hh"

///////////////////////////////////////////////////////////////////////
/// Implentation: iHashMainWindow
///////////////////////////////////////////////////////////////////////
@implementation iHashMainWindow
    - (iHashMainWindow*)initWithContentRect:(NSRect)contentRect
                        application:(Application*)application {

        if (([super initWithContentRect:contentRect application:application])) {
            return self;
        }
        return nil;
    }
    - (MainView*)createViewWithContentRect:(NSRect)contentRect {
        Application* application = [self application];
        iHashMainView* view = nil;

        LOG_DEBUG("[[iHashMainView alloc] initWithFrame:contentRect mainWindow:self application:application]...");
        if ((view = [[iHashMainView alloc] initWithFrame:contentRect mainWindow:self application:application])) {
            return view;
        } else {
            LOG_ERROR("...failed on [[iHashMainView alloc] initWithFrame:contentRect mainWindow:self application:application]");
        }
        return nil;
    }

    - (void)upperClicked:(id)sender {
        LOG_DEBUG("upperClicked checked = " << String([[self view] upperChecked]) << "...");
    }
    - (void)okClicked:(id)sender {
        LOG_DEBUG("okClicked...");
    }
    - (void)cancelClicked:(id)sender {
        LOG_DEBUG("cancelClicked...");
    }
    - (void)quitClicked:(id)sender {
        LOG_DEBUG("quitClicked...");
    }

    - (NSUInteger)windowStyle {
        return NSTitledWindowMask | NSClosableWindowMask
               | NSMiniaturizableWindowMask;
    }
    - (void)setContentView:(NSView*)contentView {
        NSRect contentRect = [contentView frame];
        [self setFrame:[self frameRectForContentRect:contentRect] display:YES];
        [super setContentView:contentView];
    }
@end
        

