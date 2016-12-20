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

iImago_INCLUDEPATH += \
$${cacao_INCLUDEPATH} \
$${imago_INCLUDEPATH} \

iImago_DEFINES += \
$${cacao_DEFINES} \
$${imago_DEFINES} \

########################################################################
# imago
iImago_HEADERS += \
$${IMAGO_SRC}/imago/graphic/surface/Color.hpp \
$${IMAGO_SRC}/imago/graphic/surface/Object.hpp \
$${IMAGO_SRC}/imago/graphic/surface/Image.hpp \
$${IMAGO_SRC}/imago/graphic/surface/Context.hpp \
$${IMAGO_SRC}/imago/graphic/surface/Pixel.hpp \
$${IMAGO_SRC}/imago/graphic/ImageObject.hpp \
$${IMAGO_SRC}/imago/graphic/Image.hpp \
$${IMAGO_SRC}/imago/graphic/ImagePoint.hpp \
$${IMAGO_SRC}/imago/graphic/MidpointEllipseImage.hpp \
$${IMAGO_SRC}/imago/graphic/MidpointEllipse.hpp \
$${IMAGO_SRC}/imago/graphic/MidpointCircleImage.hpp \
$${IMAGO_SRC}/imago/graphic/MidpointCircle.hpp \
$${IMAGO_SRC}/imago/graphic/BresenhamTriangleImage.hpp \
$${IMAGO_SRC}/imago/graphic/BresenhamTriangle.hpp \
$${IMAGO_SRC}/imago/graphic/BresenhamLineImage.hpp \
$${IMAGO_SRC}/imago/graphic/BresenhamLineContext.hpp \
$${IMAGO_SRC}/imago/graphic/BaseImage.hpp \
$${IMAGO_SRC}/imago/graphic/ImageBase.hpp \
$${IMAGO_SRC}/imago/graphic/BresenhamLine.hpp \
$${IMAGO_SRC}/imago/graphic/ColorSample.hpp \
$${IMAGO_SRC}/imago/graphic/Quadrant.hpp \
$${IMAGO_SRC}/imago/graphic/Octant.hpp \
$${IMAGO_SRC}/imago/base/Base.hpp \

iImago_SOURCES += \
$${IMAGO_SRC}/imago/graphic/ImageObject.cpp \
$${IMAGO_SRC}/imago/graphic/ImagePoint.cpp \
$${IMAGO_SRC}/imago/graphic/MidpointEllipseImage.cpp \
$${IMAGO_SRC}/imago/graphic/MidpointEllipse.cpp \
$${IMAGO_SRC}/imago/graphic/MidpointCircleImage.cpp \
$${IMAGO_SRC}/imago/graphic/MidpointCircle.cpp \
$${IMAGO_SRC}/imago/graphic/BresenhamTriangleImage.cpp \
$${IMAGO_SRC}/imago/graphic/BresenhamTriangle.cpp \
$${IMAGO_SRC}/imago/graphic/BresenhamLineImage.cpp \
$${IMAGO_SRC}/imago/graphic/BresenhamLineContext.cpp \
$${IMAGO_SRC}/imago/graphic/BaseImage.cpp \
$${IMAGO_SRC}/imago/graphic/ImageBase.cpp \
$${IMAGO_SRC}/imago/graphic/BresenhamLine.cpp \
$${IMAGO_SRC}/imago/graphic/ColorSample.cpp \
$${IMAGO_SRC}/imago/graphic/Quadrant.cpp \
$${IMAGO_SRC}/imago/graphic/Octant.cpp \
$${IMAGO_SRC}/imago/base/Base.cpp \

########################################################################
iImago_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Color.hh \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Object.hh \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Image.hh \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Context.hh \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Pixel.hh \

iImago_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Color.mm \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Object.mm \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Image.mm \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Context.mm \
$${CACAO_SRC}/cacao/cocoa/imago/graphic/surface/apple/osx/Pixel.mm \

########################################################################
iImago_OBJECTIVE_HEADERS += \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphic/iImago/iImagoMain.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphic/iImago/iImagoMainWindow.hh \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphic/iImago/iImagoMainView.hh \

iImago_OBJECTIVE_SOURCES += \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphic/iImago/iImagoMain.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphic/iImago/iImagoMainWindow.mm \
$${CACAO_SRC}/cacao/app/cocoa/apple/osx/graphic/iImago/iImagoMainView.mm \

########################################################################
iImago_HEADERS += \
$${iCacao_HEADERS} \

iImago_SOURCES += \
$${iCacao_SOURCES} \

########################################################################
iImago_OBJECTIVE_HEADERS += \
$${iCacao_OBJECTIVE_HEADERS} \

iImago_OBJECTIVE_SOURCES += \
$${iCacao_OBJECTIVE_SOURCES} \

########################################################################
iImago_LIBS += \
$${cacao_LIBS} \
$${cocoa_LIBS} \
