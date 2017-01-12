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
#   File: ichello.pri
#
# Author: $author$
#   Date: 7/10/2016
########################################################################

ichello_INCLUDEPATH += \
$${cacao_INCLUDEPATH} \

ichello_DEFINES += \
$${cacao_DEFINES} \

########################################################################
ichello_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/app/icocoa/hello/iHelloMain.hh \
$${CACAO_SRC}/cacao/icocoa/iWindowMain.hh \
$${CACAO_SRC}/cacao/icocoa/iMainWindow.hh \
$${CACAO_SRC}/cacao/icocoa/iMainView.hh \
$${CACAO_SRC}/cacao/icocoa/apple/osx/iCocoa.hh \
$${CACAO_SRC}/cacao/icocoa/apple/osx/main.hh \
$${CACAO_SRC}/cacao/icocoa/apple/osx/main_main.hh \
$${CACAO_SRC}/cacao/console/main_main.hh \

ichello_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/app/icocoa/hello/iHelloMain.mm \
$${CACAO_SRC}/cacao/icocoa/iWindowMain.mm \
$${CACAO_SRC}/cacao/icocoa/iMainWindow.mm \
$${CACAO_SRC}/cacao/icocoa/iMainView.mm \
$${CACAO_SRC}/cacao/icocoa/apple/osx/iCocoa.mm \
$${CACAO_SRC}/cacao/icocoa/apple/osx/main.mm \
$${CACAO_SRC}/cacao/icocoa/apple/osx/main_main.mm \

########################################################################

ichello_LIBS += \
$${cacao_LIBS} \
$${cocoa_LIBS} \
$${xosnadir_LIBS} \

