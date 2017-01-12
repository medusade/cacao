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
#   File: iHello.pro
#
# Author: $author$
#   Date: 1/11/2017
########################################################################
include(../../../QtCreator/cacao.pri)
include(../cacao.pri)
include(../../../QtCreator/iCacao.pri)
include(../iCacao.pri)
include(../../../QtCreator/iHello/iHello.pri)

TARGET = iHello

INCLUDEPATH += \
$${iHello_INCLUDEPATH} \

DEFINES += \
$${iHello_DEFINES} \

########################################################################
OBJECTIVE_HEADERS += \
$${iHello_OBJECTIVE_HEADERS} \

OBJECTIVE_SOURCES += \
$${iHello_OBJECTIVE_SOURCES} \

########################################################################
HEADERS += \
$${OBJECTIVE_HEADERS} \
$${iHello_HEADERS} \

SOURCES += \
$${iHello_SOURCES} \

########################################################################
LIBS += \
$${iHello_LIBS} \
-framework AppKit \
-framework CoreFoundation \
-framework Foundation \

########################################################################
# NO Qt
QT -= gui core

