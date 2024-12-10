*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${register_username_locator}                xpath=//input[@id='basic_username']
${register_password_locator}                xpath=//input[@id='basic_password']
${register_confirm_password_locator}        xpath=//input[@id='basic_confirmPassword']
${signup_btn_locator}                       xpath=//button[@Type="submit"]
${register_success_locator}                 xpath=//button//span[text()='OK']
${homepage_locator}                         xpath=//div[@id='app']

*** Keywords ***
Input Username
    [Arguments]     ${username}
    SeleniumLibrary.Wait until element is visible   ${register_username_locator}
    Input Text      ${register_username_locator}    ${username}

Input Password
    [Arguments]     ${password}
    SeleniumLibrary.Wait until element is visible   ${register_password_locator}
    Input Text      ${register_password_locator}    ${password}

Input Confirm Password
    [Arguments]     ${conf_password}
    SeleniumLibrary.Wait until element is visible   ${register_confirm_password_locator}
    Input Text      ${register_confirm_password_locator}    ${conf_password}

Click Sign Up
    SeleniumLibrary.Wait until element is visible   ${signup_btn_locator}
    Click Element   ${signup_btn_locator}

Click OK
    SeleniumLibrary.Wait until element is visible   ${register_success_locator}
    Click Element   ${register_success_locator}

Verify That Redirect To Home Page When Register Successfully
    SeleniumLibrary.Wait until element is visible   ${homepage_locator}