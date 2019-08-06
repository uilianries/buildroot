################################################################################
#
# Conan GTest package
#
################################################################################

CONAN_GTEST_VERSION = 1.8.1
CONAN_GTEST_INSTALL_STAGING = YES
CONAN_GTEST_LICENSE = BSD-3-Clause
CONAN_GTEST_LICENSE_FILES = licenses/LICENSE
CONAN_GTEST_SITE = $(call github,bincrafters,conan-gtest,e28f1217907db483521841dcfad9606b1c99a970)
CONAN_GTEST_REFERENCE = gtest/$(CONAN_GTEST_VERSION)@bincrafters/stable

$(eval $(conan-package))
