import os
from robot import run

# Path to your Robot Framework test cases
test_path = '..//Tests//Switchee_testusite.robot'

# Define the output directory
output_directory = '..//results'

# Ensure the output directory exists
if not os.path.exists(output_directory):
    os.makedirs(output_directory)

# Function to run the tests
def run_robot_tests():
    # Run the tests with the specified output directory and listener
    run(test_path, outputdir=output_directory, listener='custom_listener.CustomListener')

if __name__ == '__main__':
    # Run the tests
    run_robot_tests()
