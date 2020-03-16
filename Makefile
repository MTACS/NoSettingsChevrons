ARCHS = arm64 arm64e # Make tweak compatible with iPhone 5s - 11 

DEBUG = 0 # Strip debug symbols from the binary and remove _debug_ from the package name

FINALPACKAGE = 1 # Set this to 1 to remove -1 from build number (1.0.1-1 -> 1.0.1)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoSettingsChevrons

NoSettingsChevrons_FILES = Tweak.xm
NoSettingsChevrons_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install:: # Use this if you want more customization when tweak is installed, for tweaks that require a respring, I suggest using "sbreload" in place of "killall -9 ProcessName"
	install.exec "killall -9 Preferences" # Kill Settings, no need to respring
