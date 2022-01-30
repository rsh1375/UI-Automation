***Settings***
Documentation  This is a data-driven test case
Resource  ../Resources/common.robot
Resource  ../Resources/variables.robot 
Suite Setup  Open Page
Suite Teardown  Finish TestCase
Force Tags   DDT
Test Template  Show Products

***Variables***
${CATEGORIES}  xpath://div[@class='c-navi-new-list__category c-navi-new-list__category--main']
${CATEGORY}  xpath://a[text()='کتاب، لوازم تحریر و هنر']
${TYPE}  xpath://a[text()='مجلات']
${INTERNAL MAGAZINE}  xpath://body[1]/main[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/a[1]/div[1]
${EXTERNAL MAGAZINE}  xpath://body[1]/main[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/a[2]/div[1]
${COVER}  xpath://div[@class='c-box__header c-box__header--toggleable js-box-toggle is-hidden']
${PAPER}  xpath://label[@data-fa="کاغذی"]
${MAGAZINE1}  xpath://img[@alt='مجله سینمایی فارابی شماره 84']
${MAGAZINE2}  xpath://img[@alt='مجله THE BATMAN WHO LAUGHS 1 ژانویه 2018']

***Test Cases***                     magazinetype          magazine
Show Products Of Internal Magazines  ${INTERNAL MAGAZINE}  ${MAGAZINE1}

Show Products Of External Magazines  ${EXTERNAL MAGAZINE}  ${MAGAZINE2}

***Keywords***    
Show Products
    [Arguments]  ${magazinetype}  ${magazine}
    Mouse Over  ${CATEGORIES}
    Click Element  ${CATEGORY}
    Click Element  ${TYPE}
    Page Should Contain  مجلات داخلی
    Click Element  ${magazinetype}
    Run Keyword And Ignore Error  Scroll Element Into View  ${COVER}
    Wait Until Element Is Visible  ${COVER}
    Page Should Contain  نوع جلد  
    Set Focus To Element  ${COVER}
    Click Element At Coordinates  ${COVER}
    Wait Until Element Is Visible  ${PAPER}
    Click Element  ${PAPER}
    Scroll Element Into View  ${magazine}
    Click Element  ${magazine} 
    Switch Window	NEW