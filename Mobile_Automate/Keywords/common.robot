*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Tap when element is visible
    [Arguments]    ${to_wait_and_click_element}
    AppiumLibrary.Wait until element is visible    ${to_wait_and_click_element}
    AppiumLibrary.Click element    ${to_wait_and_click_element}