from conans import ConanFile, CMake

class BlinkLedConan(ConanFile):
    settings = "os", "arch", "compiler", "build_ype"
    requires = "wiringpi/2.50"
    exports_sources = "main.cpp", "CMakeLists.txt"
    generators = "cmake"
    _cmake = None

    def build(self):
        self._cmake = CMake(self)
        self._cmake.configure()
        self._cmake.build()

    def package(self):
        self._cmake.install()

    def package_info(self):
        self.env_info.PATH.append(self.package_folder)
