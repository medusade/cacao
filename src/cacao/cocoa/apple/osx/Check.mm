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
///   File: Check.mm
///
/// Author: $author$
///   Date: 8/30/2016
///////////////////////////////////////////////////////////////////////
#include "cacao/cocoa/apple/osx/Check.hh"

///////////////////////////////////////////////////////////////////////
/// Implentation: Check
///////////////////////////////////////////////////////////////////////
@implementation Check

    - (Check*)initWithFrame:(NSRect)rect
              title:(NSString*)title target:(NSObject*)target action:(SEL)action {

        if (([self initWithFrame:rect])) {

            [self setTarget:target];
            [self setAction:action];
            [self setTitle:title];
            [self setButtonType:NSSwitchButton];
            [self setState:NSOffState];
            return self;
        }
        return nil;
    }

    - (BOOL)check:(BOOL)checked {
        [self setState:((checked)?(NSOnState):(NSOffState))];
        return [self checked];
    }
    - (BOOL)checked {
        return (NSOnState == [self state]);
    }
@end
