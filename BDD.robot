*** Settings ***
Documentation    Suite description
Resource    ./login.resource
Suite Teardown  Close Browsers

*** Test Cases ***
Valid Login
    Given Open Website
    When type username   winly2212@gmail.com
    and type password   21122000
    and click button login
    Then page should contain      Yêu cầu xác thực 2 yếu tố

Invalid Login1_account not in db
    Given Open Website
    When type username   thang21122000@gmail.com
    and type password   12345678
    and click button login
    Then page should contain       The email address you entered isn't connected to an account.

Invaid Login2_wrong password
    Given Open Website
    When type username   winly2212@gmail.com
    and type password   12345678
    and click button login
    Then page should contain    The password that you've entered is incorrect.
Invaid Login3_Để trống email và password
    Given Open Website
    When type username   ${EMPTY}
    and type password       ${EMPTY}
    and click button login
    Then page should contain    The email address or mobile number you entered isn't connected to an account.

Invaid Login4_null password
    Given Open Website
    When type username   winly2212@gmail.com
    and type password   ${EMPTY}
    and click button login
    Then page should contain    The password that you've entered is incorrect.