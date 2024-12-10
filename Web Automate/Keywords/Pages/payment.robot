*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${payment_method_credit_locator}    xpath=//h1[text()='Select Payment Method']
${next_btn_locator}                 xpath=//span[text()='Next']
${card_number_locator}              xpath=//input[@id='basic_bin']
${expiration_date_locator}          xpath=//input[@id='basic_exp']
${cvc_locator}                      xpath=//input[@id='basic_cvc']
${card_owner}                       xpath=//input[@id='basic_owner']
${conf_payment_btn_locator}         xpath=//button[@type="submit"]
${payment_success_btn_locator}      xpath=//span[text()='OK']
${continue_shopping_locator}        xpath=//span[text()='Continue Shopping']
${payment_success_locator}          xpath=//div[@class='success-description']

 
*** Keywords ***
Verify That Payment Method With Credit Card Show When Click PAY
    SeleniumLibrary.Wait until element is visible   ${payment_method_credit_locator} 

Click Next
    SeleniumLibrary.Wait until element is visible   ${next_btn_locator}
    Click Element      ${next_btn_locator}

Input Card Number
    [Arguments]     ${card_number}
    SeleniumLibrary.Wait until element is visible   ${card_number_locator}
    Input Text      ${card_number_locator}    ${card_number}

Input Expiration Date
    [Arguments]     ${exp_date}
    SeleniumLibrary.Wait until element is visible   ${expiration_date_locator}
    Input Text      ${expiration_date_locator}    ${exp_date}

Input CV Code
    [Arguments]     ${cv_code}
    SeleniumLibrary.Wait until element is visible   ${cvc_locator}
    Input Text      ${cvc_locator}    ${cv_code}

Input Card Owner
    [Arguments]     ${owner}
    SeleniumLibrary.Wait until element is visible   ${card_owner}
    Input Text      ${card_owner}    ${owner}

Click Confirm Payment
    SeleniumLibrary.Wait until element is visible   ${conf_payment_btn_locator}
    Click Element      ${conf_payment_btn_locator}

Click OK
    SeleniumLibrary.Wait until element is visible   ${payment_success_btn_locator}
    Click Element      ${payment_success_btn_locator}

Click Continue shopping
    SeleniumLibrary.Wait until element is visible   ${continue_shopping_locator}
    Click Element      ${continue_shopping_locator}

Verify That Show Order Detail Page When Payment Successfully
    SeleniumLibrary.Wait until element is visible    ${payment_success_locator}    timeout=10s

Get Order ID
    SeleniumLibrary.Wait until element is visible    ${payment_success_locator}
    ${order_detail}        SeleniumLibrary.Get text    ${payment_success_locator}
    ${id_line}             String.Get Line    ${order_detail}    0
    ${order_id}            String.Get Substring    ${id_line}    -4
    [RETURN]    ${order_id}

