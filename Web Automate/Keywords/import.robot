*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

Resource    ./Pages/register.robot
Resource    ./Pages/login.robot
Resource    ./Pages/toolbars.robot
Resource    ./Pages/search.robot
Resource    ./Pages/product_page.robot
Resource    ./Pages/payment.robot
Resource    ./Pages/cart.robot
Resource    ./Pages/my_account.robot

Resource    ./Features/login_feature.robot
Resource    ./Features/register_feature.robot
Resource    ./Features/search_feature.robot
Resource    ./Features/my_account_feature.robot
Resource    ./Features/cart_feature.robot
Resource    ./Features/payment_feature.robot