*** Settings ***
Library           SeleniumLibrary
Library           Collections
Variables         variable.yaml

*** Variables ***
${username}    admin
${time}    10
${pi}    3.1415
${x}    5
${y}    10    

# list
@{array}    Batman      Superman    WonderWomen     Flash

# Dictionary == JSON
&{emplayee}    Name=Kittiphonf    Age=23    Role=QAEngineer    Project=Cardx
&{dictionary}    Hero=Ironman    Villain=Thanos    Anti-Hero=Deadpool


*** Keywords ***
function_1
    [Arguments]    ${username}
        Log To Console    hello ${username}!!

function_2
    [Arguments]    ${username}
        Log To Console    hello ${username}!!
        [Return]    yunce

*** Test Cases ***
# TC_1
#     function_1    yun
# TC_2
#     ${receive}  function_2  eiei
#     function_2  ${receive}

# TC_3
#     BuiltIn.Log To Console    ${username}
#     BuiltIn.Log To Console    ${time}
#     BuiltIn.Log To Console    ${pi}
#     ${username}    BuiltIn.Set Variable    new_username
#     BuiltIn.Log To Console    ${username}

# TC_4
#     ${sum}    Evaluate    ${x}+${y}
#     BuiltIn.Log To Console    ${sum}

# TC_5
#     Collections.Append to list  ${array}  Aquaman
#     BuiltIn.Log to console  ${array}
#     BuiltIn.Log to console  ${array}[4]
    
# TC_6
#     # Collections.Append to Dictionary &{dictionary}  age=23
#     BuiltIn.Log to console  ${dictionary}
#     BuiltIn.Log to console  ${dictionary}[Villain] สามารถเขียนได้ 3 แบบ
#     BuiltIn.Log to console  ${dictionary.Villain}
#     BuiltIn.Log to console  ${dictionary['Villain']}
