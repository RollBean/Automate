*** Settings ***
Resource    ..//..//./Resources/import.robot

*** Keywords ***
Tap product
    [Arguments]    ${product}
    ${to_replace_product}=    String.Replace string
    ...    ${catalog_locator.product_image}    PRODUCT_NAME    ${product}
    common.Tap when element is visible    ${to_replace_product}
