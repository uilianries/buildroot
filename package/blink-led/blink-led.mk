################################################################################
#
# Blink LED
#
################################################################################

BLINK_LED_VERSION = 0.1.0
BLINK_LED_SITE = ./package/blink-led
BLINK_LED_SITE_METHOD = local
BLINK_LED_CONF_OPTS = -DCMAKE_VERBOSE_MAKEFILE=ON
BLINK_LED_REFERENCE = blink-led/$(BLINK_LED_VERSION)@

$(eval $(conan-package))
