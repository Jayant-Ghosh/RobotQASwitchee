*** Settings ***

Library    SeleniumLibrary    Screenshot On Failure=False

Resource    ..//Resources//Switchee_objects.robot
Resource    ..//Resources//Switchee_keywords.robot


*** Tasks ***

Login to Website
    Login To Switchee Website
    Users List Creation
    Add User list
    Update user
    Go Back
    Go Back
    Partner Creation
    Upload PAN Card
    Edit PAN Details
    Logout from Switchee 

Close the Website
    Close Browser 
