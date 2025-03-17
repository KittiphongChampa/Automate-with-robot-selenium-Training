Search item
*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot

*** Test Cases ***
TC_1
    ${receive}    search_page.Search item    phone
    # Log To Console    ${receive}
    Should Be Equal    ${receive}    Zoppee phone