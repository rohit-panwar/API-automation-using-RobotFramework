*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}  http://thetestingworldapi.com/
${ID}  28

*** Test Cases ***
Get Request Students Details
    create session  Get_Student_Details  ${Base_URL}
    ${response}=    get request  Get_Student_Details    api/studentsDetails
    log to console  ${response.status_code}
    log to console  ${response.content}
    log  ${response.status_code}
    log  ${response.content}

Get Request Students Details bt Id
    create session  Get_Student_Details_By_Id  ${Base_URL}
    ${response}=    get request  Get_Student_Details_By_Id    api/studentsDetails/${ID}
    log to console  ${response.status_code}
    log to console  ${response.content}
    log  ${response.status_code}
    log  ${response.content}
    ${code}=  convert to string  ${response.status_code}
    should be equal   ${code}   200