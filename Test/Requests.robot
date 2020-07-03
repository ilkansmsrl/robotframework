*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary


*** Variables ***
${Base_URL}  http://thetestingworldapi.com/



*** Test Cases ***
Get_Request
    Create Session  Get_Student_Details  ${Base_URL}
    ${response}=  Get Request  Get_Student_Details  api/studentsDetails
    run keyword if  ${response.status_code} == 200  successfull request  ELSE  Unsuccessful request


Post_Request
    create session  AddData  ${Base_url}
    ${body}=  create dictionary  firt_name=ilkan  middle_name=deneme  last_name=simsirel  date_of_birth=01/01/1998
    ${response}=  post request  AddData  /api/studentsDetails  data=${body}
    log to console  ${response.status_code}
    log to console  ${response.content}




*** Keywords ***

successfull request
    log to console  request is successful

Unsuccessful request
    log to console  request is unsuccessful