THEOS_DEVICE_IP = 192.168.1.4

ARCHS = arm64 arm64e

DEBUG = 0

FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoSettingsChevrons

NoSettingsChevrons_FILES = Tweak.xm
NoSettingsChevrons_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences"
