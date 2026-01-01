*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SERVER}  localhost:7272
${BROWSER}  Chrome
${REGISTER URL}  http://${SERVER}/Lab4/Registration.html
${DELAY}  1

*** Test Cases ***
Open Registration Page
  Open Browser  ${REGISTER URL}  ${BROWSER}
  Set Selenium Speed  ${DELAY}
  Input Text  id:firstname  Somyod
  Input Text  id:lastname  Sodsai
  Input Text  id:organization  CS KKU
  Input Text  id:email  somyod@kkumail.com
  Input Text  id:phone  1234
  Capture Page Screenshot  filename=input6.png
  Click Button  id:registerButton
  Capture Page Screenshot  filename=result6.png
  Sleep  5s