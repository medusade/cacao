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
#include "cacao/app/cocoa/apple/osx/crypto/iHash/MainWindow.hh"
#include "cacao/cocoa/apple/osx/Logger.hh"

///////////////////////////////////////////////////////////////////////
/// Implentation: iHashMainWindow
///////////////////////////////////////////////////////////////////////
@implementation iHashMainWindow
    - (iHashMainWindow*)initWithContentRect:(NSRect)contentRect
                        application:(Application*)application
                        mainWindowPeer:(iHashMainWindowPeer*)mainWindowPeer {

        _mainWindowPeer = mainWindowPeer;
        if (([super initWithContentRect:contentRect application:application])) {

            [self registerForDraggedTypes:
             [NSArray arrayWithObjects:NSFilenamesPboardType, nil]];

            if ((_mainWindowPeer = mainWindowPeer)) {
                LOG_DEBUG("_mainWindowPeer->Init(self)...");
                _mainWindowPeer->Init(self);
            }
            return self;
        }
        return nil;
    }
    - (void)dealloc {
        if ((_mainWindowPeer)) {
            LOG_DEBUG("_mainWindowPeer->Fini()...");
            _mainWindowPeer->Fini();
        }
        [super dealloc];
    }
    - (MainView*)createViewWithContentRect:(NSRect)contentRect {
        Application* application = [self application];
        iHashMainView* view = nil;

        LOG_DEBUG("[[iHashMainView alloc] initWithFrame:contentRect mainWindow:self application:application mainWindowPeer:_mainWindowPeer]...");
        if ((view = [[iHashMainView alloc] initWithFrame:contentRect mainWindow:self application:application mainWindowPeer:_mainWindowPeer])) {
            return view;
        } else {
            LOG_ERROR("...failed on [[iHashMainView alloc] initWithFrame:contentRect mainWindow:self application:application mainWindowPeer:_mainWindowPeer]");
        }
        return nil;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    - (void)upperClicked:(id)sender {
        BOOL upperChecked = [[self view] upperChecked];
        LOG_DEBUG("upperClicked checked = " << String(upperChecked) << "...");
        if ((_mainWindowPeer)) {
            _mainWindowPeer->UpdateHash();
        }
    }
    - (void)okClicked:(id)sender {
        LOG_DEBUG("okClicked...");
        if ((_mainWindowPeer)) {
            _mainWindowPeer->Hash();
        }
    }
    - (void)cancelClicked:(id)sender {
        LOG_DEBUG("cancelClicked...");
        if ((_mainWindowPeer)) {
            _mainWindowPeer->HashCancel();
        }
    }
    - (void)quitClicked:(id)sender {
        Application* application = nil;
        LOG_DEBUG("quitClicked...");
        if ((_mainWindowPeer)) {
            _mainWindowPeer->HashCancel();
        }
        if ((application = [self application])) {
            [application stop:self];
        }
    }
    - (void)updateFileHash:(id)sender {
        XOS_LOG_DEBUG("updateFileHash...");
        if ((_mainWindowPeer)) {
            _mainWindowPeer->HashFileUpdate();
        }
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    - (NSUInteger)windowStyle {
        return NSTitledWindowMask | NSClosableWindowMask
               | NSMiniaturizableWindowMask;
    }
    - (void)setContentView:(NSView*)contentView {
        NSRect contentRect = [contentView frame];
        [self setFrame:[self frameRectForContentRect:contentRect] display:YES];
        [super setContentView:contentView];
    }

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender {
    NSPasteboard* pboard = [sender draggingPasteboard];
    NSDragOperation sourceDragMask = [sender draggingSourceOperationMask];

    if ([[pboard types] containsObject:NSFilenamesPboardType]) {
        if (sourceDragMask & NSDragOperationLink) {
            return NSDragOperationCopy;
        } else if (sourceDragMask & NSDragOperationCopy) {
            return NSDragOperationCopy;
        }
    }
    return NSDragOperationNone;
}
- (BOOL)performDragOperation:(id <NSDraggingInfo>)sender {
    NSPasteboard *pboard = [sender draggingPasteboard];
    NSDragOperation sourceDragMask = [sender draggingSourceOperationMask];

    LOG_DEBUG("...dropped");
    if ( [[pboard types] containsObject:NSFilenamesPboardType] ) {
        NSArray* files = nil;

        if ((files = [pboard propertyListForType:NSFilenamesPboardType])) {
            NSString* fileName = nil;

            LOG_DEBUG("...dropped files");
            if ((fileName = [files objectAtIndex:0])) {
                const char* chars = 0;

                if ((chars = [fileName UTF8String])) {
                    iHashMainView* view = nil;

                    LOG_DEBUG("...dropped file \"" << chars << "\"");
                    if ((view = [self view])) {
                        iHashControlView* control = nil;

                        if ((control = [view control])) {
                            String fileString(chars);

                            [control setFile:fileString];
                            if ((_mainWindowPeer)) {
                                _mainWindowPeer->Hash();
                            }
                            return YES;
                        }
                    }
                }
            }
        }
    }
    return NO;
}
@end
        

