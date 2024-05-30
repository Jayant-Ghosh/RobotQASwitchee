*** Settings ***

Library    SeleniumLibrary

Resource    ..//Resources//Switchee_objects.robot
Resource    ..//Resources//Switchee_keywords.robot


*** Tasks ***

Login to Website
    Login To Switchee Website
    Users List Creation
    Logout from Switchee 
