*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Resource    ../pages/books_page.robot
Resource    ../resources/resources.robot
Resource    ../resources/system.robot

Test Setup       Run Keywords     Configure Selenium    Navigate To Homepage
Test Teardown    Close Browser

*** Test Cases ***
Create Book
    Open Create Book Form
    Fill Out Book Details
    Submit Book Creation
    Element Should Be Visible    ${success_msg_locator}

Check Books Page
    ${elem}    Get Webelement               ${clickable_row_locator}
    ${bool}    Element Should Be Visible    ${elem}                     
