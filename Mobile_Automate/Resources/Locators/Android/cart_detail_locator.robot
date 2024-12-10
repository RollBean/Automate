*** Variables ***
${my_cart_product}        xpath=//android.view.ViewGroup[@content-desc="product row"]
${target_product_amount"<<product>>"}        xpath=//android.widget.TextView[@content-desc="product label" and @text="<<product>>"]/following-sibling::android.view.ViewGroup[@content-desc="counter amount"]/android.widget.TextView