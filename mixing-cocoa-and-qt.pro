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
	
	LIBS += -framework Sparkle -framework AppKit

	# FIXME: Stopped working. Need to fix this.
	#QMAKE_INFO_PLIST = Info.plist
	QMAKE_POST_LINK = mkdir mixing-cocoa-and-qt.app/Contents/Frameworks && cp -r /Library/Frameworks/Sparkle.framework mixing-cocoa-and-qt.app/Contents/Frameworks
}
