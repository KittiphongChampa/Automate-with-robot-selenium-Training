*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
# Test Setup      SeleniumLibrary.Open browser    https://www.ebay.com/    chrome
# Test Teardown      SeleniumLibrary.Close browser

*** Variables ***
${product}      T-Shirt

*** Test Cases ***
# Test case 01
#     SeleniumLibrary.Wait until element is visible      id=gh-ac
#     SeleniumLibrary.Input text      id=gh-ac    ${product}
#     SeleniumLibrary.Wait until element is visible      id=gh-search-btn
#     SeleniumLibrary.Click element         id=gh-search-btn
#     SeleniumLibrary.Wait until page contains    Save this search   

# Xpath
# Test case 02
#     SeleniumLibrary.Open Browser    file:///C:/robot/doptraining/dop-train-11-03-25/FileWeb/locator.html    chrome
#     SeleniumLibrary.Input Text    xpath=//*[@id="txtEmail"]    test@gmail.com
#     SeleniumLibrary.Input Text    xpath=/html/body/div/form/input[2]    Yun
#     SeleniumLibrary.Input Text    xpath=/html/body/div/form/input[3]    1234
#     SeleniumLibrary.Click Button    xpath=/html/body/div/form/div/button
#     Sleep    5
#     SeleniumLibrary.Close Browser

# Locator 
Test case 03
    SeleniumLibrary.Open Browser    file:///C:/robot/doptraining/dop-train-11-03-25/FileWeb/locator.html    chrome
    SeleniumLibrary.Input Text    id=txtEmail    test@gmail.com
    SeleniumLibrary.Input Text    class=name-box    Yun
    # Debug
    SeleniumLibrary.Input Text    name=pwdEle    1234
    # SeleniumLibrary.Click Button    class=submitCls
    SeleniumLibrary.Click Button    xpath=//button[@type="submit"]
    Sleep    5
    SeleniumLibrary.Close Browser

