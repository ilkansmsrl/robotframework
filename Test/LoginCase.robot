*** Settings ***
Documentation  My First robot test
Resource  ../resources/utils.robot
Resource  ../resources/homepageApp.robot
Library  SeleniumLibrary
Library  DebugLibrary


Test Setup  utils.start session
Test Teardown  utils.close session
*** Variables ***

*** Test Cases ***
successful testcase
    homepageApp.go to login
    Input Text  ${USER_NAME}  30119297978
    Input Text  ${USER_PASSWORD}  Smsrl.683
    homepageApp.click login
    sleep  2


unsuccessful testcase
    homepageApp.go to login
    Input Text  ${USER_NAME}  30119297979
    Input Text  ${USER_PASSWORD}  Smsrl.683
    homepageApp.click login
    homepageApp.verify error message
    sleep  2

*** Keywords ***




