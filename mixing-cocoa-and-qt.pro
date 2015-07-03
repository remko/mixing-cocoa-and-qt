TEMPLATE = app

QT += widgets

HEADERS += \
	$$PWD/AutoUpdater.h

SOURCES += \
	$$PWD/AutoUpdater.cpp \
	$$PWD/main.cpp

mac {
	HEADERS += \
		$$PWD/SparkleAutoUpdater.h \
		$$PWD/CocoaInitializer.h

	OBJECTIVE_SOURCES += \
		$$PWD/SparkleAutoUpdater.mm \
		$$PWD/CocoaInitializer.mm
	
	QMAKE_LFLAGS += -F.
	QMAKE_CXXFLAGS += -F.
	QMAKE_CFLAGS += -F.
	QMAKE_OBJECTIVE_CFLAGS += -F.
	LIBS += -framework Sparkle -framework AppKit

	# FIXME: Stopped working. Need to fix this.
	#QMAKE_INFO_PLIST = Info.plist
	QMAKE_POST_LINK = mkdir mixing-cocoa-and-qt.app/Contents/Frameworks && cp -r /Library/Frameworks/Sparkle.framework mixing-cocoa-and-qt.app/Contents/Frameworks
}
