*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Search item
    [Arguments]    ${text_search}
    #create session
    RequestsLibrary.Create Session    search_session    ${base_url}

    #create header ส่วนใหญ่ใช้ Token, Content-Type หรืออื่นใด
    ${header}   BuiltIn.Create Dictionary   token=${token}

    #create body + update
    ${file_data}    JSONLibrary.Load Json From File    ${CURDIR}/../../resources/settings/search_template.json
    ${file_data}    JSONLibrary.Update Value To Json    ${file_data}    $..text    ${text_search}

    #send request
    ${response}    RequestsLibrary.GET On Session    search_session    url=/api/product/search?    params=${file_data}    headers=${header}    expected_status=200
    ${discount}    JSONLibrary.Get Value From Json    ${response.json()}    $..discount

    ${result}    JSONLibrary.Get Value From Json    ${response.json()}    $.product[?(@.name=="Zoppee phone")].name
    # Log To Console    ${result}[0]

    RETURN    ${result}[0]

    
    

    


    