# -------------------------------------------------
# Project created by QtCreator 2012-03-22T13:33:06
# -------------------------------------------------
TARGET = flexview
TEMPLATE = app
SOURCES += ./src/main.cpp \
    ./src/mainwindow.cpp \
    src/qtwrapper/regclass.cpp \
    src/qtwrapper/qluaslot.cpp \
    src/qtwrapper/lua_qobject.cpp \
    src/qtwrapper/lua_qlayout.cpp \
    src/luahighlighter.cpp \
    src/luadialog.cpp \
    src/qtwrapper/lua_qaction.cpp \
    src/qtwrapper/lua_qmainwindow.cpp \
    src/qtwrapper/lua_qrect.cpp \
    src/qtwrapper/lua_qtextedit.cpp \
    src/qtwrapper/lua_qbutton.cpp \
    src/qtwrapper/lua_commondlg.cpp \
    src/qtwrapper/lua_qeditor.cpp \
    src/qluaedit.cpp \
    src/qtwrapper/lua_qlist.cpp
HEADERS += ./src/mainwindow.h \
    src/qtwrapper/converter.hpp \
    src/qtwrapper/qluaslot.h \
    src/luahighlighter.h \
    src/luadialog.h \
    src/qluaedit.h
HEADERS += ../qextserialport/qextserialenumerator.h \
    ../qextserialport/qextserialport.h

# -------------------------------------------------
# sources for hexeditor
# -------------------------------------------------
SOURCES += hexeditor/xbytearray.cpp \
    hexeditor/qhexedit_p.cpp \
    hexeditor/qhexedit.cpp \
    hexeditor/commands.cpp
HEADERS += hexeditor/xbytearray.h \
    hexeditor/qhexedit_p.h \
    hexeditor/qhexedit.h \
    hexeditor/commands.h

# -------------------------------------------------
# sources for lua
# -------------------------------------------------
SOURCES += lua-5.1.5/src/print.c \
    lua-5.1.5/src/lzio.c \
    lua-5.1.5/src/lvm.c \
    lua-5.1.5/src/lundump.c \
    lua-5.1.5/src/ltm.c \
    lua-5.1.5/src/ltablib.c \
    lua-5.1.5/src/ltable.c \
    lua-5.1.5/src/lstrlib.c \
    lua-5.1.5/src/lstring.c \
    lua-5.1.5/src/lstate.c \
    lua-5.1.5/src/lparser.c \
    lua-5.1.5/src/loslib.c \
    lua-5.1.5/src/lopcodes.c \
    lua-5.1.5/src/lobject.c \
    lua-5.1.5/src/loadlib.c \
    lua-5.1.5/src/lmem.c \
    lua-5.1.5/src/lmathlib.c \
    lua-5.1.5/src/llex.c \
    lua-5.1.5/src/liolib.c \
    lua-5.1.5/src/linit.c \
    lua-5.1.5/src/lgc.c \
    lua-5.1.5/src/lfunc.c \
    lua-5.1.5/src/ldump.c \
    lua-5.1.5/src/ldo.c \
    lua-5.1.5/src/ldebug.c \
    lua-5.1.5/src/ldblib.c \
    lua-5.1.5/src/lcode.c \
    lua-5.1.5/src/lbaselib.c \
    lua-5.1.5/src/lauxlib.c \
    lua-5.1.5/src/lapi.c

# -------------------------------------------------
# sources for luabind
# -------------------------------------------------
SOURCES += luabind/src/wrapper_base.cpp \
    luabind/src/weak_ref.cpp \
    luabind/src/stack_content_by_name.cpp \
    luabind/src/scope.cpp \
    luabind/src/pcall.cpp \
    luabind/src/open.cpp \
    luabind/src/object_rep.cpp \
    luabind/src/link_compatibility.cpp \
    luabind/src/inheritance.cpp \
    luabind/src/function.cpp \
    luabind/src/exception_handler.cpp \
    luabind/src/error.cpp \
    luabind/src/create_class.cpp \
    luabind/src/class_rep.cpp \
    luabind/src/class_registry.cpp \
    luabind/src/class_info.cpp \
    luabind/src/class.cpp

# -------------------------------------------------
# sources for qextserialport
# -------------------------------------------------
SOURCES += ./qextserialport/qextserialport.cpp
unix:SOURCES += ./qextserialport/posix_qextserialport.cpp
unix:!macx:SOURCES += ./qextserialport/qextserialenumerator_unix.cpp
macx { 
    SOURCES += ./qextserialport/qextserialenumerator_osx.cpp
    LIBS += -framework \
        IOKit \
        -framework \
        CoreFoundation
}
win32 { 
    SOURCES += ./qextserialport/win_qextserialport.cpp \
        ./qextserialport/qextserialenumerator_win.cpp
    DEFINES += WINVER=0x0501 # needed for mingw to pull in appropriate dbt business...probably a better way to do this
    LIBS += -lsetupapi
}
INCLUDEPATH += ./lua-5.1.5/src \
    ./luabind
QMAKE_CXXFLAGS += -Wno-ignored-qualifiers
FORMS += src/luadialog.ui
OTHER_FILES += src/script.lua