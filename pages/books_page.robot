*** Settings ***
Library    String

*** Variables ***
# Main Books page
${clickable_row_locator}    css:.clickable-row
${create_btn_locator}       css:#create
${success_msg_locator}      css:.alert-success

# Create Book page
${book_name_locator}           css:#name
${book_author_locator}         css:#author
${book_description_locator}    css:#description
${cover_link_locator}          css:#cover
${submit_book_locator}         css:#save


*** Keywords ***
Open Create Book Form
    Click Element    ${create_btn_locator}

Enter Book Name
    [Arguments]    ${book_name}            
    Input Text     ${book_name_locator}    ${book_name}

Enter Book Author
    [Arguments]    ${book_author}            
    Input Text     ${book_author_locator}    ${book_author}

Fill Out Book Details
    ${first_random}=     Generate Random String    10                  [LETTERS]
    ${book_name}=        Set Variable              ${first_random}
    Enter Book Name      ${book_name}
    ${second_random}=    Generate Random String    5                   [LETTERS]
    ${author_name}=      Set Variable              ${second_random}
    Enter Book Author    ${author_name}

Submit Book Creation
    Click Button    ${submit_book_locator}
