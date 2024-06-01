*** Settings ***
Library         RPA.Robocorp.Vault
Library         String
Library         OperatingSystem
Library         RPA.JSON
Library         RPA.RobotLogListener
Library         XML
Library         RPA.HTTP

Resource    ..//Resources//Switchee_objects.robot
Variables    ..//Environment/env_config.yaml


*** Keywords ***

Login To Switchee Website
    Set Selenium Speed     1s
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Input Text    ${username}    administrator
    Input Password    ${password}    Admin@#4321
    Click Button    ${login}

Navigate To Url
    [Arguments]    ${url}    ${browser}
    Log    Browse to Switchee Server: ${url}
    Open Browser    url=${url}    browser=Chrome
    Maximize Browser Window



Enter Text Finding Element By XPath
    [Arguments]    ${locator}    ${value}
    TRY
        Wait Until Element Is Enabled    ${locator}    5s
    EXCEPT
        Log    Failed to enter text ${value} in field ${locator}
    END



Logout from Switchee
    Click Element    //span[@class="avatar-frame"]
    Click Element    ${logout_button}

Users List Creation
    Set Selenium Speed    1s
    Wait Until Page Contains Element    //span[@title='User']
    Click Element    //span[@title='User']

Add User list
    Click Button   ${add_user} 
    Input Text    ${user_email}    jayant@gmail.com
    Input Text    ${user_firstname}    Jay
    Click Button    ${user_save}
    Sleep    5s
    Wait Until Page Contains Element    //div[@class='msgprint'] 
    Click Element    //div[@class='modal-dialog msgprint-dialog']//button[@class='btn btn-modal-close btn-link']//*[name()='svg']

Update user
    Input Text    //input[@placeholder='Full Name']    Jay
    Click Element    xpath=//a[@title='${fullname}']
    Click Element    //a[@id='user-short_bio-tab']
    Input Text    //div[@data-fieldname='mobile_no']//input[@type='text']    8879045390
    Click Element    //a[@id='user-roles_permissions_tab-tab']
    Page should Contain checkbox    //input[@data-unit='Partner']
    Select Checkbox    //input[@data-unit='Partner']
    Click Element    //a[@id='user-settings_tab-tab']
    Click Element    //div[normalize-space()='Change Password']
    Input Text    //input[@type='password']    Jayanta
    Click Element    //button[@data-label="Save"]


Partner Creation
    Click Element    //span[normalize-space()='Partner Details']
    Click Element    //span[@title='Partner']
    Click Element    //a[@title='abc']
    Click Element    //div[@data-fieldname='partner_kyc']//input[@role='combobox']
    Click Element    //div[@data-fieldname='partner_kyc']//a[@title='Open Link']//*[name()='svg']
    Click Element    //a[@id='partner-kyc-pan_details_tab-tab']
    Upload PAN Card

Upload PAN Card
    Wait Until Element Is Visible    //button[@data-fieldname='pan_card_file']
    Click Element    //button[@data-fieldname='pan_card_file']
    Log    ${CURDIR}
    ${image_path}    Set Variable    ${CURDIR}/../Resources/Images/PANcard.png
    ${image_path}    Normalize Path    ${image_path}

    Choose File    //button[@fdprocessedid='o0untz']   file_path=${image_path}
    Click Element    //button[@type='button'][normalize-space()='Upload']




    







Invalid login Test cases
    Set Selenium Speed     1s
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Input Text    ${username}    jayanta.ghosh@atriina.com
    Input Password    ${password}    Jayanta@1
    Click Button    ${login}
    Element Should Contain    //button[normalize-space()='Invalid Login. Try again.']    Ivalid login. Try again
    
