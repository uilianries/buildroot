RPI_OLED_EXAMPLE_VERSION = 0.1.0
RPI_OLED_EXAMPLE_SITE = ./package/rpi-oled-example
RPI_OLED_EXAMPLE_SITE_METHOD = local
RPI_OLED_EXAMPLE_CONF_OPTS = -DCMAKE_VERBOSE_MAKEFILE=ON
RPI_OLED_EXAMPLE_REFERENCE = rpi-oled-example/$(RPI_OLED_EXAMPLE_VERSION)@

$(eval $(conan-package))