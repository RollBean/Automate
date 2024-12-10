*** Variables ***
&{cart_detail_locator}
...    my_cart_product=xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Displays list of selected products"]/android.view.ViewGroup
...    target_product_name=xpath=//android.widget.TextView[@text="/PRODUCT/"]
...    target_product_amount=xpath=//android.widget.TextView[@text="/PRODUCT/"]/../..//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/noTV"]