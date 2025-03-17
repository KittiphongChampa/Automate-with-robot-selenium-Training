*** Settings ***
Library           SeleniumLibrary
# Suite Setup       Open Browser To Login Page
# Suite Teardown    Close Browser

*** Variables ***
${BROWSER}        Chrome
${URL}            https://training-platform.doppio-tech.com/login
${USERNAME}       admin
${PASSWORD}       admin123

*** Keywords ***
Open Browser To Login Page
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

# Login As User
#     [Arguments]    ${username}    ${password}
#     Input Text    id=username    ${username}
#     Input Text    id=password    ${password}
#     Click Button    id=login

# Should Be Logged In
#     Wait Until Element Is Visible    id=logout    10 seconds
#     Element Should Be Visible        id=logout

# Logout
#     Click Link    id=logout
#     Element Should Be Visible    id=login

*** Test Cases ***
TC-01 Login With Valid Credentials
    [Documentation]    Verify login with valid username and password
    Open Browser To Login Page
    Input Text    //*[@id="app"]/section/div/div/form/div[1]/div/div[2]/div/div/span/input    ${USERNAME}
    Input Text    //*[@id="app"]/section/div/div/form/div[2]/div/div[2]/div/div/span/input    ${PASSWORD}
    Click Element    //*[@id="app"]/section/div/div/form/div[2]/div/div[2]/div/div/span/span[2]
    Sleep    50
    # Click Element    //*[@id="app"]/section/div/div/form/div[3]/div/div/div/div/button
# TC-02 Login With Invalid Credentials
#     [Documentation]    Verify login with invalid username and password
#     Login As User    invalid_user    invalid_password
#     Page Should Contain    Invalid username or password
