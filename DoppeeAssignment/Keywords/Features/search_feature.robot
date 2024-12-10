*** Settings ***
Resource    ../../keywords/import.robot

*** Keywords ***
Search Product Name And Add Product To Cart
    [Arguments]     ${product_name}
    search.Input Product Name       ${product_name}
    search.Click Search Icon
    search.Select Product    
    product_page.Add Product To Cart
    product_page.Confirm To Add Product