*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
start session
    open browser  about:blank  chrome  add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors");
    Maximize Browser Window

close session
    close browser
