***Settings***
Documentation  A common resourse file with global keywords
Library  SeleniumLibrary
Resource  variables.robot

***Variables***
${ENTER BUTTON}  xpath://body[1]/header[1]/div[1]/div[1]/div[2]/div[1]/div[1]/a[1]
${USERNAME BOX}  xpath://input[@name='login[email_phone]']
${SUBMIT BUTTON}  xpath://button[@type='submit']
${PASSWORD BOX}  xpath://input[@name='login[password]']
${PROFILE}  xpath://body[1]/header[1]/div[1]/div[1]/div[2]/div[1]/div[1]/a[1]
${HEADER_PROFILE}  xpath://a[contains(@class,"header__profile")]

***Keywords***
Open Page
  Set Selenium Speed  ${SPEED}
  Set Selenium Timeout  ${TIMEOUT}
  Open Browser  ${URL}  ${BROWSER} 
  Maximize Browser Window

Enter Information
  Click Element  ${ENTER BUTTON}
  Input Text  ${USERNAME BOX}  ${Username}
  Click Element  ${SUBMIT BUTTON}
  Input Text  ${PASSWORD BOX}  ${Username}
  Click Element  ${SUBMIT BUTTON}

Show Profile
  Click Element  ${PROFILE} 
  Wait Until Element Is Visible  ${HEADER_PROFILE} 
  Page Should Contain  خروج

Finish TestCase
  Close Browser