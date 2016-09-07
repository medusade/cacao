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
#   File: iLamna.pro
#
# Author: $author$
#   Date: 9/7/2016
########################################################################
include(../../../QtCreator/cacao.pri)
include(../cacao.pri)
include(../../../QtCreator/iLamna/iLamna.pri)

TARGET = iLamna

INCLUDEPATH += \
$${iLamna_INCLUDEPATH} \

DEFINES += \
$${iLamna_DEFINES} \

########################################################################
OBJECTIVE_HEADERS += \
$${iLamna_OBJECTIVE_HEADERS} \

OBJECTIVE_SOURCES += \
$${iLamna_OBJECTIVE_SOURCES} \

########################################################################
HEADERS += \
$${OBJECTIVE_HEADERS} \
$${iLamna_HEADERS} \

SOURCES += \
$${iLamna_SOURCES} \

########################################################################
LIBS += \
$${iLamna_LIBS} \

