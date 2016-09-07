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
#   File: iSha256.pri
#
# Author: $author$
#   Date: 9/6/2016
########################################################################
iSha256_INCLUDEPATH += \
$${iHash_INCLUDEPATH} \

iSha256_DEFINES += \
$${iHash_DEFINES} \

########################################################################
iSha256_OBJECTIVE_HEADERS += \
$${iHash_OBJECTIVE_HEADERS} \
$${CACAO_SRC}/cacao/cocoa/crypto/hash/Sha256.hh \

iSha256_OBJECTIVE_SOURCES += \
$${iHash_OBJECTIVE_SOURCES} \
$${CACAO_SRC}/cacao/cocoa/crypto/hash/Sha256.mm \

########################################################################
iSha256_HEADERS += \
$${iHash_HEADERS} \

iSha256_SOURCES += \
$${iHash_SOURCES} \

########################################################################
iSha256_LIBS += \
$${iHash_LIBS} \
