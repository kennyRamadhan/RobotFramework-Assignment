*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${ORACLE DATABASE URL}          https://qademo.onebrick.io/h2
${ORACLE DATABASE USER}         sa
${ORACLE DATABASE DRIVER}       org.h2.Driver
${ORACLE DATABASE PASSWORD}
*** Keywords ***
Verify DB Connect    
    Connect To Database      ${ORACLE DATABASE DRIVER}      ${ORACLE DATABASE URL}  ${ORACLE DATABASE USER}  ${ORACLE DATABASE PASSWORD}