*** Settings ***
Resource    ../Keywords/import.robot
Resource    ../Keywords/common.robot

*** Variables ***
${URL}              https://training-platform.doppio-tech.com/
${PASSWORD}         Testpass_01
${CONFPASSWORD}     Testpass_01
${PRODUCTNAME}      Phone
${NAME}             Test
${SURNAME}          Lastname
${ADDRESS}          999 doppio
${PHONE}            0864686808
${CARDNUM}          4111111111111111
${EXPDATE}          08/2026
${CVCODE}           123
${OWNER}            Name

*** Variables ***
${url}                  https://training-platform.doppio-tech.com/
${password}             Testpass_01
${conf_password}        Testpass_01
${product_name}         Phone
${name}                 Test
${sur_name}             Lastname
${shipping_address}     999 doppio
${phone}                0864686808
${card_number}          4111111111111111
${exp_date}             08/2026
${cv_code}              123
${owner}                Name

*** Test Cases ***
TC001-Verify That User Can Register And Make Payment Successfully
    ${register_user}=    common.Generate Random Email
    ${username}=        Set Variable    ${register_user}
    
    Open Browser        ${URL}      chrome
    Maximize Browser Window
    register_feature.Register with Username And Password        ${username}     ${password}     ${conf_password}
    search_feature.Search Product Name And Add Product To Cart      ${product_name}
    cart_feature.Input Delivery Info        ${name}       ${sur_name}          ${shipping_address}          ${phone}          ${username}
    payment_feature.Use Credit Card For Payment     ${card_number}      ${exp_date}      ${cv_code}       ${owner}
    ${ID}    payment.Get Order ID
    my_account_feature.Verify Order Preparing    ${ID}
    [Teardown]  Close Browser

