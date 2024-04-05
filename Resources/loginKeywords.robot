*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/loginPage.py

*** Keywords ***
Input Valid Username 
    [Arguments]   ${username}
    Input Text    ${usernameField}    ${username}

Input Valid Password
    [Arguments]    ${password}
    Input Text    ${passwordField}   ${password}

Scroll To Login Button
    Scroll Element Into View    ${loginBtn}
Click Login Button
    Click Button    ${loginBtn}

Click Submit Button        
    Click Button    ${submitBtn}

Verify Succesfull Login
    Page Should Contain Button  ${succesfullLoginNotif}  

Click Logout Button
    Click Button    ${logoutBtn}

Verify Succesfull Logout
    Page Should Contain Element    ${loginForm}  

Verify Error Notif Login
    Page Should Contain Element    ${errorNotifLogin}