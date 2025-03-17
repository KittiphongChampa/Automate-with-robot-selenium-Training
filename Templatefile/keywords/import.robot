*** Settings ***

Library    SeleniumLibrary
Library    Collections
Library    DebugLibrary

#Pages
Resource    ${CURDIR}/common.robot
Resource    ${CURDIR}/pages/login_page.robot

#Features
Resource    ${CURDIR}/features/login_feature.robot

#Resource
Resource    ${CURDIR}/../resources/locators/login_locator.robot
Variables    ${CURDIR}/../resources/settings/config.yaml
Variables    ${CURDIR}/../resources/testdata/testdata.yaml
