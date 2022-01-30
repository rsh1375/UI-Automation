***Settings***
Documentation  A resourse file for buying a product
Library  SeleniumLibrary

***Variables***
${CATEGORIES}  xpath://div[@class='c-navi-new-list__category c-navi-new-list__category--main']
${BUTTON1}  xpath://label[@data-fa='فروشنده برگزیده']
${CHECHBOX1}  xpath://label[@class='c-ui-checkbox']
${BUTTON2}  xpath://label[@data-search='اپل Apple']
${CHECHBOX2}  xpath://label[@data-fa="اپل"]
${SORT BY}  xpath://a[text()='پرفروش‌ترین‌']
${PRODUCT}  xpath://img[@alt="گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 1 ترابایت و رم 6 گیگابایت - اکتیو "]
${ADD TO CART}  xpath://a[@class='js-ab-product-action btn-add-to-cart btn-add-to-cart--full-width js-add-to-cart js-cart-page-add-to-cart js-btn-add-to-cart']
${BUY}  xpath://a[@class='o-btn o-btn--full-width o-btn--contained-red-lg selenium-next-step-shipping']
${DELETE}  xpath://a[@class='c-cart-item__delete js-remove-from-cart']

***Keywords***
Choose Product  
    Mouse Over  ${CATEGORIES}
    Click Link  partial link:اپل 
    Run Keyword And Ignore Error  Scroll Element Into View  ${BUTTON1}
    Set Focus To Element  ${CHECHBOX1}
    Select Checkbox  ${CHECHBOX1}
    Run Keyword And Ignore Error  Scroll Element Into View  ${BUTTON2}
    Set Focus To Element  ${CHECHBOX2}
    Click Element  ${CHECHBOX2}
    Click Link  ${SORT BY}
    Run Keyword And Ignore Error  Scroll Element Into View  ${PRODUCT}
    Set Focus To Element  ${PRODUCT}
    Click Element  ${PRODUCT}
    Switch Window	NEW 
    Run Keyword And Ignore Error  Scroll Element Into View  ${ADD TO CART}
    Click Element  ${ADD TO CART}
    Page Should Contain   سبد خرید

Buy Product 
   Set Focus To Element  ${BUY}
    Click Element  ${BUY}
    Page Should Contain  اطلاعات ارسال

Delete Product
    Click Element  ${DELETE}
    Page Should Contain  سبد خرید شما خالی است