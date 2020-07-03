*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${REGISTER_BUTTON}  //a[@href='/uye-ol']
${USER_FIRSTNAME}  firstName
${USER_LASTNAME}  lastName
${CITIZENSHIP_NUMBER}  citizenshipNumber
${BIRTH_DATE}  id:birthDate
${PHONE}  id:phone
${EMAIL}  email
${PASSWORD}  password
${UYELIK_SOZLESMESI}  //div[7]//div[@role='checkbox']
${KVKK_METNİ}  //div[8]//div[@role='checkbox']
${ABONE}  //div[9]//div[@role='checkbox']
${UYEOL_BUTTON}  //button[@type='submit' and text()='ÜYE OL']


*** Keywords ***

registerbutton click
    Click Element  ${REGISTER_BUTTON}
    sleep  2
