*** Settings ***
Resource  ./PO/homepage.robot

*** Keywords ***
go to homepage
    homepage.go to app

go to login
      homepage.go to login

click login
    homepage.click login

verify error message
    homepage.verify error message


