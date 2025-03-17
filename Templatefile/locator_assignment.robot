*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DebugLibrary

*** Variables ***
${URL}    file:///C:/robot/doptraining/dop-train-11-03-25/FileWeb/locator2.html
${BROWSER}    chrome

${locator_email}    xpath=//input[@automate-element="email"]
${locator_name}    xpath=//parent::div[@id="zoneOfName"]/input[@type="text"]
${locator_password}    xpath=//input[@id="txtPwd-fsalsaSdssUss"]
${locator_confirm_password}    xpath=//label[@label-id="confirmPwd"]/following-sibling::input
${locator_nickname}    xpath=//label[contains(text(),"Nickname")]/following-sibling::input
${locator_province}    xpath=//input[@a="id1" and @b="pro"]
${locator_postcode}    xpath=//input[@a="id1" and @b="post"]
${locator_country}    xpath=//input[@a="id2" and @b="pro"]
${locator_submit}    xpath=//parent::div[@class="btn-block"]/button[@class="submitCls"]
${aleart}    I got click


*** Keywords ***
key_form
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}
    SeleniumLibrary.Input Text    ${locator_email}    test@gmail.com
    SeleniumLibrary.Input Text    ${locator_name}    kittiphong champa
    SeleniumLibrary.Input Text    ${locator_password}    1234
    SeleniumLibrary.Input Text    ${locator_confirm_password}    1234
    SeleniumLibrary.Input Text    ${locator_nickname}    yun
    SeleniumLibrary.Input Text    ${locator_province}    Bangkok
    SeleniumLibrary.Input Text    ${locator_postcode}    10400
    SeleniumLibrary.Input Text    ${locator_country}    Thailand
    SeleniumLibrary.Click Button    ${locator_submit}
    Sleep    5

Input_email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text    ${locator_email}    ${email}

Input_name
    [Arguments]    ${name}
    SeleniumLibrary.Input Text    ${locator_name}    ${name}

Input_password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text    ${locator_password}    ${password}

Input_confirm_password
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Input Text    ${locator_confirm_password}    ${confirm_password}

Input_nickname
    [Arguments]    ${nickname}
    SeleniumLibrary.Input Text    ${locator_nickname}    ${nickname}

Input_province
    [Arguments]    ${province}
    SeleniumLibrary.Input Text    ${locator_province}     ${province}

Input_postcode
    [Arguments]    ${postcode}
    SeleniumLibrary.Input Text    ${locator_postcode}    ${postcode}

Input_country
    [Arguments]    ${country}
    SeleniumLibrary.Input Text    ${locator_country}    ${country}

Submit_Button
    SeleniumLibrary.Click Button    ${locator_submit}

*** Test Cases ***
Submit form
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}
    Input_email    test@gmail.com
    Input_name    kittiphong champa
    Input_password    1234
    Input_confirm_password    1234
    Input_nickname    yun
    Input_province    Bangkok
    Input_postcode    10400
    Input_country    Thailand
    Submit_Button
    Sleep    5

   