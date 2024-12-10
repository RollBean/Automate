*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Variables ***
${delivery_page}                xpath=//div[@class='delivery-page']
${name_locator}                 xpath=//input[@id='form_item_name']
${surname_locator}              xpath=//input[@id='form_item_surName']
${shipping_add_locator}         xpath=//input[@id='form_item_address']
${phone_locator}                xpath=//input[@id='form_item_phone']
${email_locator}                xpath=//input[@id='form_item_email']
${coupon_locator}               xpath=//input[@placeholder='Insert code']
${payment_btn_locator}          xpath=//span[text()='PAY']
 
*** Keywords ***
Verify That Redirect To Delivery Page
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_page}

Input Name
    [Arguments]     ${name}
    SeleniumLibrary.Wait Until Element Is Visible   ${name_locator}
    SeleniumLibrary.Input Text      ${name_locator}    ${name}
    ${entered_name}=  SeleniumLibrary.Get Value    ${name_locator}
    Should Be Equal    ${entered_name}    ${name}

Input Surname
    [Arguments]     ${surname}
    SeleniumLibrary.Wait until element is visible   ${surname_locator}
    Input Text      ${surname_locator}    ${surname}
    ${entered_surname}=  SeleniumLibrary.Get Value    ${surname_locator}
    Should Be Equal    ${entered_surname}    ${surname}

Input Shipping Address
    [Arguments]     ${address}
    SeleniumLibrary.Wait until element is visible   ${shipping_add_locator}
    Input Text      ${shipping_add_locator}    ${address}
    ${entered_shipping}=  SeleniumLibrary.Get Value    ${shipping_add_locator}
    Should Be Equal    ${entered_shipping}    ${address}

Input Phone Number
    [Arguments]     ${phone}
    SeleniumLibrary.Wait until element is visible   ${phone_locator}
    Input Text      ${phone_locator}    ${phone}
    ${entered_phone}=  SeleniumLibrary.Get Value    ${phone_locator}
    Should Be Equal    ${entered_phone}    ${phone}

Input Email
    [Arguments]     ${email}
    SeleniumLibrary.Wait until element is visible   ${email_locator}
    Input Text      ${email_locator}    ${email}
    ${entered_email}=  SeleniumLibrary.Get Value    ${email_locator}
    Should Be Equal    ${entered_email}    ${email}

Input Coupon Code
    [Arguments]     ${coupon}
    SeleniumLibrary.Wait until element is visible   ${coupon_locator}
    Input Text      ${coupon_locator}    ${coupon}
    ${entered_coupon}=  SeleniumLibrary.Get Value    ${coupon_locator}
    Should Be Equal    ${entered_coupon}    ${COUPON}

Click Pay
    SeleniumLibrary.wait until element is visible   ${payment_btn_locator}
    Click Element      ${payment_btn_locator}