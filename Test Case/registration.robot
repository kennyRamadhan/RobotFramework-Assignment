*** Settings ***
Library       SeleniumLibrary
Resource    ../Resources/registrationKeywords.robot
Variables    ../Variables/testData.py

*** Test Cases ***
Valid Registration
    Open My Browser         ${URL}        ${Browser}
    Input First Name        ${firstName}
    Input Last Name         ${lastName}
    Input Email             ${email}   
    Input Phone Number      ${phoneNumber}
    Input address           ${address} 
    Input Password Field    ${password} 
    Input Confirm Password  ${confirmPassword}  
    Click Register button
    Close Browser

# There is some issues with faker.unique property, however i still get the same data when i run in the same test suit

# Invalid Registration First Name Null
#     Open My Browser         ${URL}        ${Browser}      
#     Input Last Name         ${lastName}
#     Input Email             ${email}   
#     Input Phone Number      ${phoneNumber}
#     Input address           ${address} 
#     Input Password Field    ${password} 
#     Input Confirm Password  ${confirmPassword}  
#     Click Register button
#     Verify First Name Error Message
#     Close Browser

# Invalid Registration Last Name Null
#     Open My Browser         ${URL}        ${Browser}
#     Input First Name        ${firstName}
#     Input Email             ${email}   
#     Input Phone Number      ${phoneNumber}
#     Input address           ${address} 
#     Input Password Field    ${password} 
#     Input Confirm Password  ${confirmPassword}  
#     Click Register button
#     Verify Last Name Error Message
#     Close Browser

# Invalid Registration Email Null
#     Open My Browser         ${URL}        ${Browser}
#     Input First Name        ${firstName}
#     Input Last Name         ${lastName}
#     Input Phone Number      ${phoneNumber}
#     Input address           ${address} 
#     Input Password Field    ${password} 
#     Input Confirm Password  ${confirmPassword}  
#     Click Register button
#     Verify Email Error Message
#     Close Browser

# Invalid Registration Phone Number Null
#     Open My Browser         ${URL}        ${Browser}
#     Input First Name        ${firstName}
#     Input Last Name         ${lastName}
#     Input Email             ${email}   
#     Input address           ${address} 
#     Input Password Field    ${password} 
#     Input Confirm Password  ${confirmPassword}  
#     Click Register button
#     Verify Phone Number Error Message
#     Close Browser

# Invalid Registration Password Not Match
#     Open My Browser         ${URL}        ${Browser}
#     Input First Name        ${firstName}
#     Input Last Name         ${lastName}
#     Input Email             ${email}   
#     Input Phone Number      ${phoneNumber}
#     Input address           ${address} 
#     Input Password Field    ${password} 
#     Input Confirm Password  ${confirmPasswordInvalid}  
#     Click Register button
#     Verify Confirm Password Error Message
#     Close Browser
