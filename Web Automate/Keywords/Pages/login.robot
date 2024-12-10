*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${login_username_locator}           xpath=//input[@Type='text']
${login_password_locator}           xpath=//input[@Type='password']
${signin_btn_locator}               xpath=//button[@Type='submit']
${signup_page_locator}              xpath=//button[@type="button"]
${conf_btn_locator}                 xpath=//span[text()='OK']
${homepage_locator}                 xpath=//div[@id='app']

*** Keywords ***
Input Username
    [Arguments]     ${username}
    SeleniumLibrary.Wait until element is visible   ${login_username_locator}
    Input Text      ${login_username_locator}    ${username}

Input Password
    [Arguments]     ${password}
    SeleniumLibrary.Wait until element is visible   ${login_password_locator}
    Input Text      ${login_password_locator}    ${password}

Click Sign In
    SeleniumLibrary.Wait until element is visible   ${signin_btn_locator}
    Click Element   ${signin_btn_locator}

Click OK
    SeleniumLibrary.Wait until element is visible   ${conf_btn_locator}
    Click Element   ${conf_btn_locator}

Click Register
    SeleniumLibrary.Wait until element is visible   ${signup_page_locator}
    Click Element   ${signup_page_locator}

Verify That Redirect To Home Page When Login Successfully
    SeleniumLibrary.Wait until element is visible   ${homepage_locator}