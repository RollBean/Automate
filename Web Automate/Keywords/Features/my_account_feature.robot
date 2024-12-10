*** Settings ***
Resource    ../../keywords/import.robot

*** Keywords ***
Edit User Information
    [Arguments]     ${first_name}         ${last_name}         ${email}         ${phone}         ${shipping_address}
    toolbars.Click User Icon
    my_account.Verify That Redirect To User Page
    my_account.Click Edit User Information
    my_account.Input First Name            ${first_name}
    my_account.Input Last Name             ${last_name}
    my_account.Input Email                 ${email}
    my_account.Input Phone Number          ${phone}
    my_account.Input Shipping Address      ${shipping_address}
    my_account.Click Submit Edit User Information

Cancel Edit User Information
    [Arguments]         ${first_name}         ${last_name}         ${email}       ${phone}         ${shipping_address}
    toolbars.Click User Icon
    my_account.Verify That Redirect To User Page
    my_account.Click Edit User Information
    my_account.Input First Name  ${first_name}
    my_account.Input Last Name  ${last_name}
    my_account.Input Email  ${email}
    my_account.Input Phone Number  ${phone}
    my_account.Input Shipping Address  ${shipping_address}
    my_account.Click Cancel Edit User Information

Verify Order Pending Payment
    toolbars.Click User Icon
    my_account.Verify That Redirect To User Page
    my_account.Click Pending Payment

Verify Order Preparing
    [Arguments]    ${id}
    toolbars.Click User Icon
    my_account.Verify That Redirect To User Page
    my_account.Click Preparing
    my_account.Verify Order ID    ${id}

Verify Order On Delivery
    toolbars.Click User Icon
    my_account.Click On Delivery

Verify Order Delivery
    toolbars.Click User Icon
    my_account.Click Delivery

Verify Order Refund/Cancel
    toolbars.Click User Icon
    my_account.Click Refund/Cancel
    