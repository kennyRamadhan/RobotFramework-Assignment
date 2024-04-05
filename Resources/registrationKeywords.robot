*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/registrationPage.py

*** Keywords ***
Open My Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser   ${URL}    ${Browser}
    Maximize Browser Window
Input First Name
    [Arguments]   ${firstName}
    Input Text    ${firstNameField}    ${firstName}

Input Last Name
    [Arguments]    ${lastName}
    Input Text    ${lasteNameField}   ${lastName}

Input Email    
    [Arguments]    ${email}
    Input Text    ${emailField}   ${email}

Input Phone Number
    [Arguments]    ${phoneNumber}
    Input Text    ${phoneNumberField}    ${phoneNumber}

Input address
    [Arguments]    ${address}
    Input Text    ${addressField}    ${address}

Input Password Field
    [Arguments]    ${password}
    Input Text    ${passwordField}    ${password}
        
Input Confirm Password
    [Arguments]    ${confirmPassword}
    Input Text    ${confirmPasswordField}    ${confirmPassword}

Click Register button
    Click Button    ${registerBtn}

Verify Succesfull Register
    Page Should Contain Button  ${succesfullRegister}   

Verify First Name Error Message
    Page Should Contain Element    ${errorMsgFirstName}

Verify Last Name Error Message
    Page Should Contain Element    ${errorMsgLastName}

Verify Email Error Message  
    Page Should Contain Element    ${errorMsgEmail}

Verify Phone Number Error Message
    Page Should Contain Element    ${errorMsgPhoneNumber}

Verify Password Error Message
    Page Should Contain Element    ${errorMsgPassword}

Verify Confirm Password Error Message
    Page Should Contain Element    ${errorMsgConfirmPassword}