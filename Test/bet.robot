*** Settings ***
Resource  ../resources/utils.robot
Resource  ../resources/homepageApp.robot
Resource  ../resources/PO/betscenario.robot
Library  SeleniumLibrary
Library  DebugLibrary

Test Setup  utils.start session
Test Teardown  utils.close session


*** Test Cases ***

bet testcase
    homepageApp.go to login
    Input Text  ${USER_NAME}  30119297978
    Input Text  ${USER_PASSWORD}  Smsrl.683
    homepageApp.click login
    sleep  2
    debug
    Click Element  ${COLUMN1MSX}
    sleep  1
    Click Button  ${BETLIST_BUTTON}
    sleep  1
    Click Element  ${ORANARTISKABULET_CHECKBOX}
    sleep  1
    Click Element  ${ORANDUSUSUNUKABULET_CHECKBOX}
    sleep  1
    Input Text  ${MISLI_INPUT}  10
    sleep  1
    Click Button  ${OYNA_BUTTON}
    sleep  2


tribünlike testcase
    homepageApp.go to login
    Input Text  ${USER_NAME}  30119297978
    Input Text  ${USER_PASSWORD}  Smsrl.683
    homepageApp.click login
    sleep  2
    Wait Until Element Is Visible  ${TRİBÜN}  timeout=10
    Click Element  ${TRİBÜN}
    Wait Until Element Is Visible  ${USER_SEARCH_ICON}  timeout=10
    sleep  2
    Click Element  ${USER_SEARCH_ICON}
    sleep  1
    Wait Until Element Is Visible  ${USER_SEARCH_INPUT}  timeout=10
    Input Text  ${USER_SEARCH_INPUT}  Onur_Demir
    sleep  2
    Wait Until Element Is Visible  ${USER_IMG}  timeout=10
    Click Element  ${USER_IMG}
    sleep  2
    Wait Until Element Is Visible  ${USER_LIKE}  timeout=10
    Click Element  ${USER_LIKE}
    sleep  2