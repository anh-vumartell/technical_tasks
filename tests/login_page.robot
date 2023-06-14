*** Settings ***
Library    Browser
Resource    ../resources/landing_page.resource
Test Setup    Open Noona Log In Page
Test Teardown    Close Browser
Test Template   Log In An User

*** Keywords ***
Log In An User
    [Arguments]     ${username}    ${password}
    Input Credentials    ${username}    ${password}
    Submit Credentials
    Check That Error Message Is Visible With Correct Error Message Content

*** Test Cases ***
Invalid credentials, login failed     ${INVALID_CREDENTIALS}[username]    ${INVALID_CREDENTIALS}[password]
