*** Settings ***
Library     AppiumLibrary
Library     String

Resource    ..//Keywords/common.robot
Resource    ..//Resources/Locators/${platform}/cart_detail_locator.robot
Resource    ..//Resources/Locators/${platform}/catalog_locator.robot
Resource    ..//Resources/Locators/${platform}/navbar_locator.robot
Resource    ..//Resources/Locators/${platform}/product_detail_locator.robot

Resource    ..//Keywords/Features/my_cart_feature.robot
Resource    ..//Keywords/Pages/cart_detail_page.robot
Resource    ..//Keywords/Pages/catalog_page.robot
Resource    ..//Keywords/Pages/navbar_page.robot
Resource    ..//Keywords/Pages/product_detail_page.robot

Variables    ../Resources/Settings/Environments/${env}/${platform}/setting.yaml
Variables    ../Resources/Testdata/data.yaml