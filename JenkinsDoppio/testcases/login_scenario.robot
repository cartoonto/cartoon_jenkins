***Settings***
Library     SeleniumLibrary
Library     DataDriver      ${CURDIR}/../testdata/logintest.csv
Resource    ${CURDIR}/../Keywords/pages/login_page.robot
Test Setup   Open jenkins doppio website 
Test Template   login scenario
Test Teardown   Close browser 

***Test Cases***
verify login     ${username}     ${password}     ${locator_error_msg}       ${error_msg}

***Keywords***
login scenario 
    [Documentation]     cases login by username and password form logintest.csv file
    [Tags]      Web
    [Arguments]     ${username}     ${password}      ${locator_error_msg}   ${error_msg}
    Input text      ${login_page.username_locator}     ${username}
    Input text      ${login_page.password_locator}     ${password}
    Click Element    ${login_page.signIn_btn_locator} 
    Element should be visible   ${locator_error_msg}   ${error_msg}
    





