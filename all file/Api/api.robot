*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${base_url}    https://training-platform.doppio-tech.com/
${token}    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InRlc3Rfc2lnbnVwQG1haWwuY29tIiwiaWQiOjEyMjc4fQ.fcxZsFzN4ul4oDYG8hXH0mbl2w9AmlUPJRfVmm7lf3Y

*** Keywords ***

*** Test Cases ***
TC_1 Search Item
    #create session
    RequestsLibrary.Create Session    search_session    ${base_url}

    #create header ส่วนใหญ่ใช้ Token, Content-Type หรืออื่นใด
    ${header}   BuiltIn.Create Dictionary   token=${token}

    #create body + update
    ${file_data}    JSONLibrary.Load Json From File    ${CURDIR}./search_template.json
    ${file_data}    JSONLibrary.Update Value To Json    ${file_data}    $..text    kitty phone

    #send request
    ${response}    RequestsLibrary.GET On Session    search_session    url=/api/product/search?    params=${file_data}    headers=${header}    expected_status=200
    ${discount}    JSONLibrary.Get Value From Json    ${response.json()}    $..discount

    Debug
    #Check response after Debuging typing for cmd such as 
    # Log To Console response.json()    type    ${response}
    # Log To Console response    type    ${response.json()}
    # Log To Console discount    type    ${discount}
    # Log To Console discount[0] type    ${discount}[0]

    



