################################################################################
#
# OLED96
#
################################################################################

OLED96_VERSION = 69d15adfc0bf273c8469d3dc9c589aa4bb7c2936
OLED96_SITE = $(call github,bitbank2,oled_96,$(OLED96_VERSION))
OLED96_LICENSE = MIT
OLED96_INSTALL_STAGING = YES
OLED96_MAKE_OPTS += GIT_REV=$(OLED96_VERSION)

TARGET_OLED96_CFLAGS = $(TARGET_CFLAGS)
TARGET_OLED96_LDFLAGS = $(TARGET_LDFLAGS)

OLED96_MAKE_OPTS = $(TARGET_CONFIGURE_OPTS)

#define OLED96_BUILD_CMDS
#	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) $(OLED96_MAKE_OPTS) -f makefile
#	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) $(OLED96_MAKE_OPTS) -f makefile_sample
#endef


define OLED96_BUILD_CMDS
	(cd $(@D); $(TARGET_CC) $(TARGET_OLED96_CFLAGS) -Wall -Os -s \
	    sample.c fonts.c oled96.c -o oled96 $(TARGET_OLED96_LDFLAGS))
endef

define OLED96_INSTALL_TARGET_CMDS
    install -m 0755 -D $(@D)/oled96 $(TARGET_DIR)/usr/bin/oled96
endef

define OLED96_INSTALLING_STAGING_CMDS
	install -m 0755 -D $(@D)/oled96 $(TARGET_DIR)/usr/bin/oled96
endef

$(eval $(generic-package))
