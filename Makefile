TARGET = iphone:11.2:10.0
PACKAGE_VERSION = 1.0.0
FINALPACKAGE=1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VolumeSongSkipper113
VolumeSongSkipper113_FILES = Tweak.xm
VolumeSongSkipper113_PRIVATE_FRAMEWORKS = MediaRemote AppSupport

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
