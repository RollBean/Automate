*** Settings ***
Resource    ../../keywords/import.robot

*** Keywords ***
Input Delivery Info
    [Arguments]        ${name}         ${surname}          ${address}          ${phone}            ${email}
    toolbars.Click Cart Icon
    cart.Verify That Redirect To Delivery Page
    cart.Input Name                 ${name}
    cart.Input Surname              ${surname}
    cart.Input Shipping Address     ${address}
    cart.Input Phone Number         ${phone}
    cart.Input Email                ${email}