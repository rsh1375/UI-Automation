***Settings***
Documentation  A resource file for checks the availability of a product
Library  SeleniumLibrary

***Variables***
${CATEGORIES}  xpath://div[@class='c-navi-new-list__category c-navi-new-list__category--main'] 
${SORT BY}  xpath://a[text()='پرفروش‌ترین‌']
${BUTTON}  xpath://h3[text()='بهترین فرصت خرید']
${PAGE NUMBER}  xpath://a[@class='c-pager__item']
${PRODUCT}  xpath://img[@alt='گوشی موبایل اپل مدل Apple iPhone XS تک سیم کارت ظرفیت 512 گیگابایت']
${ACTION}  xpath://button[@class='o-btn o-btn--full-width o-btn--contained-red-lg c-product-stock__action js-add-to-notify-button']
${CHECKBOX}  xpath://*[@id="observed-form"]/div[5]/div/ul/li[2]/label[2]/span
${COMFIRM}  xpath://button[@id='add-to-observed']

***Keywords***
Choose Product  
    Mouse Over  ${CATEGORIES}
    Click Link  partial link:اپل  
    Click Link  ${SORT BY}
    Run Keyword And Ignore Error  Scroll Element Into View  ${BUTTON}
    Wait Until Element Is Visible  ${PAGE NUMBER}
    Click Element  ${PAGE NUMBER}
    Run Keyword And Ignore Error  Scroll Element Into View  ${PRODUCT}
    Wait Until Element Is Visible  ${PRODUCT}
    Page Should Contain  گوشی موبایل اپل مدل Apple iPhone XS تک سیم کارت ظرفیت 512 گیگابایت
    Set Focus To Element  ${PRODUCT}
    Click Element  ${PRODUCT}
    Switch Window	NEW

Check Availability
    Run Keyword And Ignore Error  Scroll Element Into View  ${ACTION}
    Wait Until Element Is Visible  ${ACTION}
    Set Focus To Element  ${ACTION}
    Click Element  ${ACTION}
    Set Focus To Element  ${CHECKBOX}
    Click Element  ${CHECKBOX}
    Click Element  ${COMFIRM}
    Page Should Contain  دیگه لازم نیست اطلاع بدی
    