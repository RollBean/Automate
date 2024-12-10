*** Settings ***
Resource    ..//Resources/import.robot

*** Test Cases ***
TC01 -- Open application add product to cart and validate detail
    AppiumLibrary.Open Application    &{mobile_and_app_setting}
    catalog_page.Tap product    ${catalog_data.target_product}
    product_detail_page.Tap add to cart button
    navbar_page.Tap_cart_icon
    my_cart_feature.Check Product Row Should Be Equal    ${cart_detail_data.expected_product_amount}
    my_cart_feature.Check Product Amount Should Be Equal    ${cart_detail_data.expect_target_product}    ${cart_detail_data.expected_product_amount}