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
#   File: iSha1.pro
#
# Author: $author$
#   Date: 9/6/2016
########################################################################
include(../../../QtCreator/cacao.pri)
include(../cacao.pri)
include(../../../QtCreator/iHash/iHash.pri)
include(../../../QtCreator/iSha1/iSha1.pri)

TARGET = iSha1

INCLUDEPATH += \
$${iSha1_INCLUDEPATH} \

DEFINES += \
$${iSha1_DEFINES} \

########################################################################
OBJECTIVE_HEADERS += \
$${iSha1_OBJECTIVE_HEADERS} \

OBJECTIVE_SOURCES += \
$${iSha1_OBJECTIVE_SOURCES} \

########################################################################
HEADERS += \
$${OBJECTIVE_HEADERS} \
$${iSha1_HEADERS} \

SOURCES += \
$${iSha1_SOURCES} \

########################################################################
LIBS += \
$${iSha1_LIBS} \

