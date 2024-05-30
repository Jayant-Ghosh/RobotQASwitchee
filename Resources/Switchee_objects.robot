*** Settings ***

Library    SeleniumLibrary
    

*** Variables ***
${url}    https://ucl-uat.switchmyloan.in/
${Browser}    Chrome
${username}    //input[@id='login_email']
${password}    //input[@id='login_password']
${login}    //button[normalize-space()='Login']
${logout_button}    //a[normalize-space()='Log out']
${searchbutton}    //input[@id='navbar-search']
${user_list}    //span[@title='User']
${add_user}    //button[@data-label='Add User']
${user_email}     //div[@role='dialog']//div[@class='form-column col-sm-12']//div[1]//div[1]//div[2]//div[1]//input[1]
${user_firstname}    //div[@role='dialog']//div[@class='form-page']//div[2]//div[1]//div[2]//div[1]//input[1]
${user_save}    //div[@role='dialog']//button[@type='button'][normalize-space()='Save']