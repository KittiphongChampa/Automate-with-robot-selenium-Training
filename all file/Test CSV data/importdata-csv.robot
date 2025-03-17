*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DebugLibrary
Library    CSVLibrary

*** Variables ***

*** Keywords ***
CSV to List
    @{list}=    read csv file to list  data.csv
    Log To Console    List
    Log To Console    ${list}

CSV to Dictionary
    @{dict}=    read csv file to associative  data.csv  
    Log To Console    Dictionary
    Log To Console    ${dict[0].Username}
    Log To Console    ${dict[0].Password} 

*** Test Cases ***
# Read CSV File As Dictionary Example
#     @{dict_list}=  Read CSV File As Dictionary    ${CURDIR}/data.csv
#     FOR    ${row}    IN    @{dict_list}
#         Log To Console    Username: ${row["Username"]}, Password: ${row["Password"]}
#     END


# Read csv file to a list example test
#     CSV to List

Read csv file to a dict example test
    CSV to Dictionary
  