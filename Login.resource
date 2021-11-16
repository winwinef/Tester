*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.facebook.com/
${BROWSER}      Chrome
${txt_name}    id=email
${txt_pass}    id=pass
${btn_login}   name=login


*** Keywords ***
Open Website
    Open browser    ${url}   ${BROWSER}

type username
    [Arguments]    ${txt_value}
    input text    ${txt_name}     ${txt_value}

type password
    [Arguments]    ${txt_value}
    input text    ${txt_pass}     ${txt_value}

click button login
    click element    ${btn_login}
Close Browsers
    Close All Browsers
