*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    ./login.resource
Suite Setup     Open Website
Suite Teardown  Close Browsers
*** Test Cases ***

*** Test Cases ***
Test Login FB1
    [Tags]    Sai password
    type username       winly2212@gmail.com
    type password       12345678
    click button login
    sleep   5s

*** Test Cases ***
Test Login FB2
    [Tags]     Để trống email và password
    type username         ${EMPTY}
    type password     ${EMPTY}
    click button login
    sleep   5s

*** Test Cases ***
Test Login FB3
    [Tags]    Để trống  password
    type username      winly2212@gmail.com
    type password      ${EMPTY}
    click button login
    sleep   5s

*** Test Cases ***
Test Login FB4
    [Tags]    Để trống  email
    type username     ${EMPTY}
    type password    211220
    click button login
    sleep   5s


*** Test Cases ***
Test Login FB5
    [Tags]    Email chưa có trong DB
    type username     thang21122000@gmail.com
    type password       12345678
    click button login
    sleep   5s
*** Test Cases ***
Test Login FB6
    [Tags]    Login succesfull
    type username   winly2212@gmail.com
    type password   21122000
    click button login
    sleep   5s

*** Keywords ***
