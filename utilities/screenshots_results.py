from robot import run
from robot.libraries.BuiltIn import BuiltIn

# Function to disable screenshots on failure
def disable_screenshots():
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    selenium_lib.set_screenshot_on_failure(False)

# Configure and run tests
def run_robot_tests():
    # Set the output directory to 'results'
    output_directory = 'results'
    
    # Additional options can be added to the run function as needed
    options = {
        'outputdir': output_directory,
        # Include other options as needed, for example:
        # 'loglevel': 'DEBUG'
    }
    
    # Run the tests
    run('C:\RobotQASwitchee\Results', **options)

if __name__ == '__main__':
    # Disable screenshots before running the tests
    disable_screenshots()
    
    # Run the tests with the specified configurations
    run_robot_tests()
