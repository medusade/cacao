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
#   File: iImago.pri
#
# Author: $author$
#   Date: 10/10/2016
########################################################################
include(../../../QtCreator/cacao.pri)
include(../cacao.pri)
include(../../../QtCreator/imago.pri)
include(../imago.pri)
include(../../../QtCreator/iCacao.pri)
include(../../../QtCreator/iImago/iImago.pri)

TARGET = iImago

########################################################################
INCLUDEPATH += \
$${iImago_INCLUDEPATH} \

DEFINES += \
$${iImago_DEFINES} \

########################################################################
OBJECTIVE_HEADERS += \
$${iImago_OBJECTIVE_HEADERS} \

OBJECTIVE_SOURCES += \
$${iImago_OBJECTIVE_SOURCES} \

########################################################################
HEADERS += \
$${OBJECTIVE_HEADERS} \
$${iImago_HEADERS} \

SOURCES += \
$${iImago_SOURCES} \

########################################################################
LIBS += \
$${iImago_LIBS} \
