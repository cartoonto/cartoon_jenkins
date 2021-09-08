***Settings***
Library     SeleniumLibrary

***Variables***
${jenkins_doppio_web_url}=     http://www.doppio-tech.com:8080/login
${browser}=     chrome
${login_page.username_locator}=    name=j_username
${login_page.password_locator}=    name=j_password
${login_page.signIn_btn_locator}=      name=Submit
# ${check_status_login_invalid_permition_locator}=  xpath=//div[@id='main-panel' and h1/text()='Access Denied']
# ${login_page.check_login_failed_locator}=   xpath=//div[@class='alert alert-danger' and text()='Invalid username or password']


***Keywords***
Open jenkins doppio website 
    [Documentation]     Open jenkins doppio website 
    Open browser        ${jenkins_doppio_web_url}     ${browser}     options=add_argument("--ignore-certificate-errors")
    Maximize browser window
    Wait until page contains element    ${login_page.username_locator}

Input username
    [Documentation]     Input username 
    [Arguments]     ${username}
    Wait until page contains element    ${login_page.username_locator} 
    Input text      ${login_page.username_locator}     ${username}

Input password
    [Documentation]     Input password 
    [Arguments]     ${password}
    Wait until page contains element    ${login_page.password_locator} 
    Input text      ${login_page.password_locator}     ${password}

Click sign in button 
    [Documentation]     Click sign in button  
    Wait until page contains element    ${login_page.signIn_btn_locator}
    Click Element    ${login_page.signIn_btn_locator} 

