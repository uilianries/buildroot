################################################################################
#
# Conan zlib package
#
################################################################################

CONAN_ZLIB_VERSION = 1.2.11
CONAN_ZLIB_INSTALL_STAGING = YES
CONAN_ZLIB_LICENSE = Zlib
CONAN_ZLIB_LICENSE_FILES = licenses/LICENSE
CONAN_ZLIB_SITE = $(call github,conan-community,conan-zlib,92d34d0024d64a8f307237f211e43ab9952ef0a1)
CONAN_ZLIB_REFERENCE = zlib/$(CONAN_ZLIB_VERSION)@conan/stable

$(eval $(conan-package))
