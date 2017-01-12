########################################################################
# Copyright (c) 1988-2017 $organization$
#
# This software is provided by the author and contributors ``as is'' 
# and any express or implied warranties, including, but not limited to, 
# the implied warranties of merchantability and fitness for a particular 
# purpose are disclaimed. In no event shall the author or contributors 
# be liable for any direct, indirect, incidental, special, exemplary, 
# or consequential damages (including, but not limited to, procurement 
# of substitute goods or services; loss of use, data, or profits; or 
# business interruption) however caused and on any theory of liability, 
# whether in contract, strict liability, or tort (including negligence 
# or otherwise) arising in any way out of the use of this software, 
# even if advised of the possibility of such damage.
#
#   File: iCacao.pri
#
# Author: $author$
#   Date: 1/11/2017
########################################################################

########################################################################
iCacao_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Thread.hh \
$${CACAO_SRC}/cacao/cocoa/mt/posix/Thread.hh \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Semaphore.hh \
$${CACAO_SRC}/cacao/cocoa/mt/apple/mach/Semaphore.hh \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Mutex.hh \
$${CACAO_SRC}/cacao/cocoa/mt/posix/Mutex.hh \

iCacao_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Thread.mm \
$${CACAO_SRC}/cacao/cocoa/mt/apple/mach/Semaphore.mm \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Mutex.mm \

########################################################################
iCacao_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Main.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainWindow.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainView.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainMenu.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Application.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Static.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Edit.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Label.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/TextField.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Check.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Button.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Progress.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Logger.hh \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Cocoa.hh \

iCacao_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Main.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainWindow.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainView.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/MainMenu.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Application.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Static.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Edit.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Label.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/TextField.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Check.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Button.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Progress.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Logger.mm \
$${CACAO_SRC}/cacao/cocoa/apple/osx/Cocoa.mm \

########################################################################
