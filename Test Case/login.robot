*** Settings ***
Library       SeleniumLibrary
Resource    ../Resources/loginKeywords.robot
Resource    ../Variables/loginFiles.robot

*** Test Cases ***
Login With Valid User
    Open My Browser    ${URL}    ${Browser}
    Input Valid Username    ${username}
    Input Valid Password    ${password}
    Click Submit Button
    Verify Succesfull Login
    Click Logout Button
    Verify Succesfull Logout
    Close Browser
login With Invalid User
    Open My Browser    ${URL}       ${Browser}
    Input Valid Username    ${invalidUsername}
    Input Valid Password    ${invalidPassword}
    Click Submit Button
    Verify Error Notif Login
    Close Browser
