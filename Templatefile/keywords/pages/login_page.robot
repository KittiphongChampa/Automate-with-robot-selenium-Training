*** Keywords ***
Input_email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text    ${login_locator.locator_email}    ${email}

Input_name
    [Arguments]    ${name}
    SeleniumLibrary.Input Text    ${login_locator.locator_name}    ${name}

Input_password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text    ${login_locator.locator_password}    ${password}

Input_confirm_password
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Input Text    ${login_locator.locator_confirm_password}    ${confirm_password}

Input_nickname
    [Arguments]    ${nickname}
    SeleniumLibrary.Input Text    ${login_locator.locator_nickname}    ${nickname}

Input_province
    [Arguments]    ${province}
    SeleniumLibrary.Input Text    ${login_locator.locator_province}     ${province}

Input_postcode
    [Arguments]    ${postcode}
    SeleniumLibrary.Input Text    ${login_locator.locator_postcode}    ${postcode}

Input_country
    [Arguments]    ${country}
    SeleniumLibrary.Input Text    ${login_locator.locator_country}    ${country}

Submit_Button
    SeleniumLibrary.Click Button    ${login_locator.locator_submit}