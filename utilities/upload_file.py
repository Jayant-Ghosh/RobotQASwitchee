import pyautogui
import time
import sys

file_path = sys.argv[1]
time.sleep(2)  # Wait for the dialog to open
pyautogui.write(file_path)
pyautogui.press('enter')
