*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DebugLibrary
Library    RequestsLibrary
Library    JSONLibrary

#Pages
Resource    ${CURDIR}/../keywords/pages/search_page.robot

#Resource
# Resource    ${CURDIR}/../resources/locators/login_locator.robot
Variables    ${CURDIR}/../resources/settings/config.yaml
