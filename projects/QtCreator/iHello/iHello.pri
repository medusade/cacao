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
#   File: iHello.pri
#
# Author: $author$
#   Date: 1/11/2017
########################################################################

iHello_INCLUDEPATH += \
$${cacao_INCLUDEPATH} \

iHello_DEFINES += \
$${cacao_DEFINES} \
USE_NADIR_BASE \

########################################################################
iHello_OBJECTIVE_HEADERS += \
$${iCacao_OBJECTIVE_HEADERS} \

iHello_OBJECTIVE_SOURCES += \
$${iCacao_OBJECTIVE_SOURCES} \

########################################################################
iHello_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/iHello/iHelloMain.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/iHello/iHelloMainWindow.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/iHello/iHelloMainView.hh \

iHello_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/iHello/iHelloMain.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/iHello/iHelloMainWindow.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/iHello/iHelloMainView.mm \

########################################################################

iHello_LIBS += \
$${cacao_LIBS} \

