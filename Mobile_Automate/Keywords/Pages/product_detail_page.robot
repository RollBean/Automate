*** Settings ***
Resource    ..//..//./Resources/import.robot    

*** Keywords ***
*** Keywords ***
Tap add to cart button
    common.Tap when element is visible    ${product_detail_locator.add_to_cart_button}
    