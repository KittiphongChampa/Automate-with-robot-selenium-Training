*** Settings ***
Library           SeleniumLibrary
Library           Collections
Variables         variable.yaml

*** Variables ***


*** Keywords ***


*** Test Cases ***
TC_1
    # Scalar
    Log to console  ${username}

    # List
    Log to console  ${array}
    Log to console  ${array}[3] 

    # Dictionary เรียกข้อมูลได้ 3 แบบ
    Log to console  ${dictionary}
    Log to console  ${dictionary}[Villain] 
    Log to console  ${dictionary.Villain}
    Log to console  ${dictionary['Villain']}

    # Dicctionary + List
    Log to console  ${dictionary}[array][0]