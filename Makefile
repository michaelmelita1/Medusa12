FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:13.2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = medusa12
medusa12_FILES = Tweak.x
medusa12_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk
