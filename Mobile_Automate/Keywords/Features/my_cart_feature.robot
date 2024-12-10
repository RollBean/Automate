*** Settings ***
Resource    ..//..//./Resources/import.robot

*** Keywords ***
Check Product Row Should Be Equal
    [Arguments]    ${expected_amount}
    ${product_row_amount} =     cart_detail_page.Get Count Product Row
    BuiltIn.Should Be Equal As Integers    ${product_row_amount}   ${expected_amount}

Check Product Amount Should Be Equal
    [Arguments]    ${product_name}    ${expected_amount}
    ${product_amount} =     cart_detail_page.Get Product Amount    ${product_name}
    BuiltIn.Should Be Equal As Integers    ${product_amount}   ${expected_amount}
    