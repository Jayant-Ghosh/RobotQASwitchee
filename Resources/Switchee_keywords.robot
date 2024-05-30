*** Settings ***

Library    SeleniumLibrary


Resource    ..//Resources//Switchee_objects.robot


*** Keywords ***

Login To Switchee Website
    Set Selenium Speed     1s
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Input Text    ${username}    administrator
    Input Password    ${password}    Admin@#4321
    Click Button    ${login}


Logout from Switchee
    Click Element    //span[@class="avatar-frame"]
    Click Element    ${logout_button}

Users List Creation
    Set Selenium Speed    1s
    Click Button    ${searchbutton}
    Input Text    ${searchbutton}    User   
    Wait Until Page Contains Element    ${user_list}
    Click Button   ${user_list}
    Click Button   ${add_user} 
    Input Text    ${user_email}    jayant@gmail.com
    Input Text    ${user_firstname}    Jay
    Click Button    ${user_save}    









Invalid login Test cases
    Set Selenium Speed     1s
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Input Text    ${username}    jayanta.ghosh@atriina.com
    Input Password    ${password}    Jayanta@1
    Click Button    ${login}
    Element Should Contain    //button[normalize-space()='Invalid Login. Try again.']    Ivalid login. Try again
    
