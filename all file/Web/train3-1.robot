*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary

*** Variables ***
${A}    Doppio
${B}    Tester
${C}    123
@{employee}    Dew    New    Game
@{Hero}    batman    superman    wonder women    Flash    Ironman    Aquaman

*** Keywords ***
function1
    [Arguments]    ${value}
    IF    "${value}" == "Doppio"
        Log To Console    สุดยอด
    ELSE
        Log To Console    Input out of bound
    END

function2
    [Arguments]    ${value}
    IF    "${value}" == "Doppio"
        Log To Console    สุดยอด
    ELSE IF    ${value} == 123
        Log To Console    ต้อง Doppio เท่านั้น
    ELSE
        Log To Console     Input out of bound
    END

function3
    Log To Console    ---------------2.a แสดงทุกค่าใน List----------------
    FOR    ${index}    IN    @{Hero}
        Log To Console    ${index}
    END

function4
    Log To Console    ---------2.b แสดงทุกค่าใน List ยกเว้น Ironman---------
    FOR    ${index}    IN    @{Hero}
        Continue For Loop If    "${index}"=="Ironman"
        Log To Console    ${index}
    END

function5    #ironman ไม่ถูก display
    Log To Console    -----2.c แสดงทุกค่าใน List และ brake ก่อน Ironman----
    FOR    ${index}    IN    @{Hero}
        Exit For Loop If    "${index}"=="Ironman"
        Log To Console    ${index}
    END

function6    #ironman ถูก display
    Log To Console    -----2.c แสดงทุกค่าใน List และ brake หลัง Ironman----
    FOR    ${index}    IN    @{Hero}
        Log To Console    ${index}
        Exit For Loop If    "${index}"=="Ironman"
    END

# function7
    
    
    

*** Test Cases ***
# TC_1
#     function1    ${A}

# TC_2
#     function2    ${C}

# TC_3
#     FOR    ${index}    IN    @{employee}
#         Log To Console    ${index}
#     END
    
# TC_4
    # function3
    # function4
    # function5
    # function6

    