########################################################################
# Copyright (c) 1988-2016 $organization$
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
#   File: iLamna.pri
#
# Author: $author$
#   Date: 9/7/2016
########################################################################
iLamna_INCLUDEPATH += \
$${cacao_INCLUDEPATH} \
$${lamna_INCLUDEPATH} \

iLamna_DEFINES += \
$${cacao_DEFINES} \
$${lamna_DEFINES} \

########################################################################
iLamna_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/cocoa/base/Run.hh \
$${CACAO_SRC}/cacao/cocoa/base/Joined.hh \
$${CACAO_SRC}/cacao/cocoa/base/Acquired.hh \
$${CACAO_SRC}/cacao/cocoa/base/Waited.hh \
$${CACAO_SRC}/cacao/cocoa/base/Locked.hh \
$${CACAO_SRC}/cacao/cocoa/base/Opened.hh \
$${CACAO_SRC}/cacao/cocoa/base/Created.hh \
$${CACAO_SRC}/cacao/cocoa/base/Attached.hh \
$${CACAO_SRC}/cacao/cocoa/base/Base.hh \

iLamna_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/base/Run.mm \
$${CACAO_SRC}/cacao/cocoa/base/Joined.mm \
$${CACAO_SRC}/cacao/cocoa/base/Acquired.mm \
$${CACAO_SRC}/cacao/cocoa/base/Waited.mm \
$${CACAO_SRC}/cacao/cocoa/base/Locked.mm \
$${CACAO_SRC}/cacao/cocoa/base/Opened.mm \
$${CACAO_SRC}/cacao/cocoa/base/Created.mm \
$${CACAO_SRC}/cacao/cocoa/base/Attached.mm \

########################################################################
iLamna_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Thread.hh \
$${CACAO_SRC}/cacao/cocoa/mt/posix/Thread.hh \
$${CACAO_SRC}/cacao/cocoa/mt/Thread.hh \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Semaphore.hh \
$${CACAO_SRC}/cacao/cocoa/mt/apple/mach/Semaphore.hh \
$${CACAO_SRC}/cacao/cocoa/mt/Semaphore.hh \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Mutex.hh \
$${CACAO_SRC}/cacao/cocoa/mt/posix/Mutex.hh \
$${CACAO_SRC}/cacao/cocoa/mt/Mutex.hh \

iLamna_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Thread.mm \
$${CACAO_SRC}/cacao/cocoa/mt/apple/mach/Semaphore.mm \
$${CACAO_SRC}/cacao/cocoa/mt/apple/osx/Mutex.mm \

########################################################################
iLamna_OBJECTIVE_HEADERS += \
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

iLamna_OBJECTIVE_SOURCES += \
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
iLamna_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/color.hh \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/object.hh \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/image.hh \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/context.hh \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/pixel.hh \

iLamna_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/color.mm \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/object.mm \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/image.mm \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/context.mm \
$${CACAO_SRC}/cacao/cocoa/lamna/graphic/surface/apple/osx/pixel.mm \

########################################################################
_iLamna_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/MainWindow.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMain.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMainWindow.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMainView.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaControlView.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMainWindowPeer.hh \

_iLamna_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMain.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMainWindow.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMainView.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaControlView.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphics/iLamna/iLamnaMainWindowPeer.mm \

########################################################################
iLamna_LIBS += \
$${cocoa_LIBS} \
$${cacao_LIBS} \

