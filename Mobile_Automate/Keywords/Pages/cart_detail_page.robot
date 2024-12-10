*** Settings ***
Resource    ..//..//./Resources/import.robot

*** Keywords ***
Get Count Product Row
    AppiumLibrary.Wait Until Element Is Visible    ${my_cart_product}
    @{product_rows} =    AppiumLibrary.Get Webelements    ${my_cart_product}
    ${product_row_amount} =    BuiltIn.Get Length    ${product_rows}
    RETURN     ${product_row_amount}

Get Product Amount
    [Arguments]    ${product_name}
    ${final_locator} =    String.Replace String    ${target_product_amount"<<product>>"}    <<product>>    ${product_name}
    AppiumLibrary.Wait Until Element Is Visible    ${final_locator}
    ${amount} =    AppiumLibrary.Get Text    ${final_locator}
    RETURN    ${amount}