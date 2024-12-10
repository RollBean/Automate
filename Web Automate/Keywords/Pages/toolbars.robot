*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${cart_locator}    xpath=//div[@id='app']//span[@aria-label='shopping-cart']
${user_locator}    xpath=//div[@id='app']//span[@aria-label='user']
 
*** Keywords ***
Click Cart Icon
    SeleniumLibrary.Wait until element is visible   ${cart_locator}
    Click Element      ${cart_locator}

Click User Icon
    SeleniumLibrary.Wait until element is visible   ${user_locator}
    Click Element      ${user_locator}