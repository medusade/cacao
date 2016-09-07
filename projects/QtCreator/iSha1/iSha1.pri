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
#   File: iSha1.pri
#
# Author: $author$
#   Date: 9/6/2016
########################################################################
iSha1_INCLUDEPATH += \
$${iHash_INCLUDEPATH} \

iSha1_DEFINES += \
$${iHash_DEFINES} \

########################################################################
iSha1_OBJECTIVE_HEADERS += \
$${iHash_OBJECTIVE_HEADERS} \
$${CACAO_SRC}/cacao/cocoa/crypto/hash/Sha1.hh \

iSha1_OBJECTIVE_SOURCES += \
$${iHash_OBJECTIVE_SOURCES} \
$${CACAO_SRC}/cacao/cocoa/crypto/hash/Sha1.mm \

########################################################################
iSha1_HEADERS += \
$${iHash_HEADERS} \

iSha1_SOURCES += \
$${iHash_SOURCES} \

########################################################################
iSha1_LIBS += \
$${iHash_LIBS} \

