from conans import ConanFile, CMake

class RpiOLDExampleConan(ConanFile):
    settings = "os", "arch", "compiler", "build_type"
    requires = "wiringpi/2.50"
    exports_sources = "main.c", "CMakeLists.txt"
    generators = "cmake"
    _cmake = None

    def configure(self):
        del self.settings.compiler.libcxx
        del self.settings.compiler.cppstd

    def build(self):
        self._cmake = CMake(self)
        self._cmake.configure()
        self._cmake.build()

    def package(self):
        self._cmake.install()

    def package_info(self):
        self.env_info.PATH.append(self.package_folder)
