*** Settings ***
Resource    ..//..//./Resources/import.robot

*** Keywords ***
Tap menu view
    common.Tap when element is visible    ${navbar_locator.menu_view}

Tap sorting icon
    common.Tap when element is visible    ${navbar_locator.sorting_icon}

Tap cart icon
    common.Tap when element is visible    ${navbar_locator.cart_icon}