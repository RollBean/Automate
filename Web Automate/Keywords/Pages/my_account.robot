*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn
Resource    ..//common.robot

*** Variables ***
${user_page}                    xpath=//div[@class='account-page']
${edit_user_locator}            xpath=//span[text()='Edit user information']
${first_name_locator}           xpath=//input[@id='form_item_user_firstname']
${last_name_locator}            xpath=//input[@id='form_item_user_lastname']
${email_locator}                xpath=//input[@id='form_item_user_email']
${phone_locator}                xpath=//input[@id='form_item_user_phone']
${shipping_add_locator}         xpath=//textarea[@id="form_item_user_shippingAddress"]
${submit_locator}               xpath=//button[@type="submit"]
${cancel_locator}               xpath=//span[text()='Cancel']
${my_coupon_locator}            xpath=//div[@class="ant-card-head-title" and text()="My Coupon"]
${pending_payment_locator}      xpath=//div[@id='rc-tabs-0-tab-Order create']
${preparing_locator}            xpath=//div[@id='rc-tabs-0-tab-wait for pick and pack']
${on_delivery_locator}          xpath=//div[@id='rc-tabs-0-tab-Wait for ship']
${delivery}                     xpath=//div[@id='rc-tabs-0-tab-delivered']
${refund_cancel_locator}        xpath=//div[@id='rc-tabs-0-tab-refund and cancel']
${my_order_preparing_locator}             xpath=//div[text()='My Order']/ancestor::div[contains(@class,'ant-card-contain-tabs')]//tbody[@class='ant-table-tbody']/tr[{{row}}]/td[1]

*** Keywords ***
Verify That Redirect To User Page
    SeleniumLibrary.Wait Until Element Is Visible    ${user_page}

Click Edit User Information
    SeleniumLibrary.Wait until element is visible   ${edit_user_locator}
    Click Element   ${edit_user_locator}

Input First Name
    [Arguments]     ${input_value}
    SeleniumLibrary.Wait until element is visible   ${first_name_locator}
    Input Text      ${first_name_locator}    ${input_value}

Input Last Name
    [Arguments]     ${input_value}
    SeleniumLibrary.Wait until element is visible   ${first_name_locator}
    Input Text      ${first_name_locator}    ${input_value}

Input Email
    [Arguments]     ${input_value}
    SeleniumLibrary.Wait until element is visible   ${email_locator}
    Input Text      ${email_locator}    ${input_value}

Input Phone Number
    [Arguments]     ${input_value}
    SeleniumLibrary.Wait until element is visible   ${phone_locator}
    Input Text      ${phone_locator}    ${input_value}

Input Shipping Address
    [Arguments]     ${input_value}
    SeleniumLibrary.Wait until element is visible   ${first_name_locator}
    Input Text      ${first_name_locator}    ${input_value}

Click Submit Edit User Information
    SeleniumLibrary.Wait until element is visible   ${submit_locator}
    Click Element   ${submit_locator}

Click Cancel Edit User Information
    SeleniumLibrary.Wait until element is visible   ${cancel_locator}
    Click Element   ${cancel_locator}
    
Click Pending Payment
    SeleniumLibrary.Wait until element is visible   ${pending_payment_locator}
    Click Element   ${pending_payment_locator}

Click Preparing
    SeleniumLibrary.Wait until element is visible   ${preparing_locator}
    Click Element   ${preparing_locator}

Verify Order ID
    [Arguments]    ${ID}
    ${last_row}    String.Replace String    ${my_order_preparing_locator}    {{row}}    last()    
    common.Verify Text    ${last_row}     ${ID}

Click On Delivery
    SeleniumLibrary.Wait until element is visible   ${on_delivery_locator}
    Click Element   ${on_delivery_locator}

Click Delivery
    SeleniumLibrary.Wait until element is visible   ${delivery}
    Click Element   ${delivery}

Click Refund/Cancel
    SeleniumLibrary.Wait until element is visible   ${refund_cancel_locator}
    Click Element   ${refund_cancel_locator}

