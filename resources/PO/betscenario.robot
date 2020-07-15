*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BETLIST_BUTTON}  //button[@class='btn btn--atrium btn--atrium--valid ins-init-condition-tracking']
${COLUMN1MS1}  //div[@class='odd__name' and text()='1'][1]
${COLUMN1MSX}  //div[@class='odd__name' and text()='X'][1]
${COLUMN1MS2}  //div[@class='odd__name' and text()='2'][1]
${COLUMN1ALT}  //div[@class='odd__name' and text()='2,5 Alt'][1]
${COLUMN1UST}  //div[@class='odd__name' and text()='2,5 Üst'][1]

${COLUMN2MS1}  //div[@class='odd__name' and text()='1'][2]
${COLUMN2MSX}  //div[@class='odd__name' and text()='X'][2]
${COLUMN2MS2}  //div[@class='odd__name' and text()='2'][2]
${COLUMN2ALT}  //div[@class='odd__name' and text()='2,5 Alt'][2]
${COLUMN2UST}  //div[@class='odd__name' and text()='2,5 Üst'][2]

${COLUMN3MS1}  //div[@class='odd__name' and text()='1'][3]
${COLUMN3MSX}  //div[@class='odd__name' and text()='X'][3]
${COLUMN3MS2}  //div[@class='odd__name' and text()='2'][3]
${COLUMN3ALT}  //div[@class='odd__name' and text()='2,5 Alt'][3]
${COLUMN3UST}  //div[@class='odd__name' and text()='2,5 Üst'][3]

${TRİBÜN}  //span[text()='TRİBÜN']
${USER_SEARCH_ICON}  //div[@class='header-search']
${USER_SEARCH_INPUT}  //input[@type='text']
${USER_IMG}  //img[@class='profile__avatar__image']
${USER_LIKE}  //*[@class='icon ic_heart empty-heart liked-heart'][1]




${ORANARTISKABULET_CHECKBOX}  //div[@class='checkbox__item'][1]
${ORANDUSUSUNUKABULET_CHECKBOX}  //div[@class='checkbox__item'][2]
${MISLI_INPUT}  //input[@id='multiplier']
${OYNA_BUTTON}  //button[@type='button' and text()='OYNA']


*** Keywords ***