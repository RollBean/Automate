*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${search_box_locator}       xpath=//input[@placeholder='input search text']
${search_btn_locator}       xpath=//button[@Type='button']
${select_product_locator}   xpath=//div[contains(text(),'Doppee')]
 
*** Keywords ***
Input Product Name
    [Arguments]     ${product_name}
    SeleniumLibrary.Wait until element is visible   ${search_box_locator}
    Input Text      ${search_box_locator}    ${product_name}

Click Search Icon
    SeleniumLibrary.Wait until element is visible   ${search_btn_locator}
    Click Element      ${search_btn_locator}

Select Product
    SeleniumLibrary.Wait until element is visible   ${select_product_locator}
    Click Element      ${select_product_locator}
