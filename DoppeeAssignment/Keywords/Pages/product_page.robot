*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${add_product_locator}  xpath=//span[text()='Add to cart']
${conf_btn_locator}  xpath=//span[text()='OK']
 
*** Keywords ***
Add Product To Cart
    SeleniumLibrary.Wait until element is visible   ${add_product_locator}
    Click Element      ${add_product_locator}

Confirm To Add Product
    SeleniumLibrary.Wait until element is visible   ${conf_btn_locator}
    Click Element      ${conf_btn_locator}