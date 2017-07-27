include(../../lthemeengine.pri)

TEMPLATE = app

QT += widgets

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    tabpage.cpp \
    appearancepage.cpp \
    fontspage.cpp \
    lthemeengine.cpp \
    paletteeditdialog.cpp \
    iconthemepage.cpp \
    interfacepage.cpp \
    fontconfigdialog.cpp \
    qsspage.cpp \
    qsseditordialog.cpp

FORMS += \
    mainwindow.ui \
    appearancepage.ui \
    fontspage.ui \
    paletteeditdialog.ui \
    iconthemepage.ui \
    interfacepage.ui \
    fontconfigdialog.ui \
    previewform.ui \
    qsspage.ui \
    qsseditordialog.ui

HEADERS += \
    mainwindow.h \
    tabpage.h \
    appearancepage.h \
    fontspage.h \
    lthemeengine.h \
    paletteeditdialog.h \
    iconthemepage.h \
    interfacepage.h \
    fontconfigdialog.h \
    qsspage.h \
    qsseditordialog.h

!equals (DISABLE_WIDGETS,1) {
   DEFINES += USE_WIDGETS
}

target.path = $$BINDIR

desktop.files = lthemeengine.desktop
desktop.path = $$DATADIR/applications

INSTALLS += target desktop