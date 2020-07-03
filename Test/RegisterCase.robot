*** Settings ***
Resource  ../resources/utils.robot
Resource  ../resources/homepageApp.robot
Resource  ../resources/registerpageApp.robot

Library  SeleniumLibrary
Library  DebugLibrary

Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***

successful testcase
    homepageApp.go to homepage
    registerpageApp.go to registerbutton click
    Wait Until Element Is Visible  ${UYEOL_BUTTON}
    Input Text  ${USER_FIRSTNAME}  ilkan
    Input Text  ${USER_LASTNAME}  şimşirel
    Input Text  ${CITIZENSHIP_NUMBER}  30119297978
    sleep  1
    Input Text  ${BIRTH_DATE}  01011998
    sleep  1
    Input Text  ${PHONE}  376678848
    sleep  1
    Input Text  ${EMAIL}  ilkansmsrl@gmail.com
    sleep  1
    Input Text  ${PASSWORD}  Smsrl.123
    sleep  1
    Click Element  ${UYELIK_SOZLESMESI}
    sleep  1
    Click Element  ${KVKK_METNİ}
    sleep  1
    Click Element  ${ABONE}
    sleep  3
