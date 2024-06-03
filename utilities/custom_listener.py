from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn

class CustomListener:
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self, outputdir='results'):
        self.outputdir = outputdir

    def start_suite(self, name, attrs):
        self._disable_screenshots()
        logger.info(f"Results will be stored in: {self.outputdir}")

    def _disable_screenshots(self):
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
        selenium_lib.set_screenshot_on_failure(False)
        logger.info("Screenshot on failure has been disabled.")
