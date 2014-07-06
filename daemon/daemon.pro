TARGET = pebbled

CONFIG += console
CONFIG -= app_bundle
CONFIG += link_pkgconfig
QT -= gui

INCLUDEPATH += ../lib
LIBS += -L$$OUT_PWD/../lib -lpebble

QT += bluetooth dbus contacts
PKGCONFIG += commhistory-qt5 mlite5
QMAKE_CXXFLAGS += -std=c++0x

SOURCES += \
    daemon.cpp \
    voicecallmanager.cpp \
    voicecallhandler.cpp \
    manager.cpp \
    dbusconnector.cpp \
    dbusadaptor.cpp

HEADERS += \
    voicecallmanager.h \
    voicecallhandler.h \
    manager.h \
    dbusconnector.h \
    dbusadaptor.h

INSTALLS += target pebbled

target.path = /usr/bin

pebbled.files = $${TARGET}.service
pebbled.path = /usr/lib/systemd/user

OTHER_FILES += org.pebbled.xml