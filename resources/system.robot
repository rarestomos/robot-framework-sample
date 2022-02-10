*** Keywords ***
Configure Selenium
    Set Selenium Speed    .25 Seconds

Navigate To Homepage
    Open Browser               ${HomePageUrl}    ${Browser} 
    Maximize Browser Window

Exit Selenium
    Capture Page Screenshot
    Close Browser
