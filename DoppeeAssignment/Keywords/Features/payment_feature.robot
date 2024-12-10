*** Settings ***
Resource    ../../keywords/import.robot

*** Keywords ***
Use Credit Card For Payment
    [Arguments]     ${card_number}      ${exp_date}      ${cv_code}       ${owner}
    toolbars.Click Cart Icon
    cart.Click Pay
    payment.Verify That Payment Method With Credit Card Show When Click PAY
    payment.Click Next
    payment.Input Card Number       ${card_number}
    payment.Input Expiration Date   ${exp_date}
    payment.Input CV Code           ${cv_code}
    payment.Input Card Owner        ${owner}
    payment.Click Confirm Payment
    payment.Click OK
    payment.Verify That Show Order Detail Page When Payment Successfully
    payment.Get Order ID
    ${order_id}    payment.Get Order ID
    RETURN   ${order_id}