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
#   File: cacao.pri
#
# Author: $author$
#   Date: 6/9/2016
########################################################################
CACAO_PKG = ../../../..
CACAO_BLD = ../..
CACAO_PRJ = $${CACAO_PKG}
CACAO_BIN = $${CACAO_BLD}/bin
CACAO_LIB = $${CACAO_BLD}/lib
CACAO_SRC = $${CACAO_PKG}/src

CONFIG(debug, debug|release) {
CACAO_CONFIG = Debug
} else {
CACAO_CONFIG = Release
}

########################################################################
# nadir
NADIR_PKG = $${CACAO_PKG}/../nadir
NADIR_PRJ = $${NADIR_PKG}
NADIR_SRC = $${NADIR_PKG}/src

nadir_INCLUDEPATH += \
$${NADIR_SRC} \

nadir_DEFINES += \

nadir_LIBS += \

########################################################################
# lamna
LAMNA_PKG = $${CACAO_PKG}/../lamna
LAMNA_PRJ = $${LAMNA_PKG}
LAMNA_SRC = $${LAMNA_PKG}/src

lamna_INCLUDEPATH += \
$${LAMNA_SRC} \

lamna_DEFINES += \

lamna_LIBS += \

########################################################################
# cacao
cacao_INCLUDEPATH += \
$${CACAO_SRC} \
$${nadir_INCLUDEPATH} \

cacao_DEFINES += \
$${nadir_DEFINES} \

cacao_LIBS += \
-L$${CACAO_LIB}/libcacao \
-lcacao \

