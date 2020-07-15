*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOMEPAGE}  https://www.bilyoner.com/
${LOGİN_BUTTON}  //button[@type='button' and @class='btn btn btn-login']
${USER_LOGİN_BUTTON}  //button[@type='submit']
${USER_NAME}  username
${USER_PASSWORD}  password
${incorrect_entry}  //p[@class='text-error']


*** Keywords ***
go to app
    go to  ${HOME_PAGE}
    sleep  2

go to login
    go to app
    Wait Until Element Is Visible  ${LOGİN_BUTTON}  10
    sleep  2
    Click Button  ${LOGİN_BUTTON}
    sleep  1

verify error message
    ${message_text} =  Get Text  ${incorrect_entry}
    should be equal  ${message_text}  Üye / TC Kimlik Numaranız veya Şifreniz hatalıdır! Lütfen tekrar deneyiniz.
    log to console  Üye / TC Kimlik Numaranız veya Şifreniz hatalıdır! Lütfen tekrar deneyiniz.
    Close browser

click login
     Click Button  ${USER_LOGİN_BUTTON}