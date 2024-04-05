*** Settings ***
Library       SeleniumLibrary
Resource    ../Resources/registrationKeywords.robot
Library        FakerLibrary

*** Variables ***
${Browser}      chrome
${URL}          https://qademo.onebrick.io/login
${username}     Kenny@gmail.com
${password}    	Test06
${invalidUsername}    K@gmail.com
${invalidPassword}    Test1234