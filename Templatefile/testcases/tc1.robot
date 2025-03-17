*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot

*** Test Cases ***
Submit form
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}
    Input_email    ${email}
    Input_name    ${name}
    Input_password    ${password}
    Input_confirm_password    ${confirm_password}
    Input_nickname    ${nickname}
    Input_province    ${province}
    Input_postcode    ${postcode}
    Input_country    ${country}
    Submit_Button
    Sleep    5