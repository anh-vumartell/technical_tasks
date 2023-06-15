*** Settings ***
Documentation    This test suite verifies Noona mobile service's login page
Library    Browser
Resource    ../resources/common.resource
Test Setup    Open Noona Log In Page
Test Teardown    Close Browser
Test Template   Log In An User

*** Test Cases ***
Invalid credentials, login failed     ${INVALID_CREDENTIALS}[username]    ${INVALID_CREDENTIALS}[password]

*** Keywords ***
Log In An User
    [Arguments]     ${username}    ${password}
    Input Credentials    ${username}    ${password}
    Submit Credentials
    Check That Error Message Is Visible With Correct Error Message Content
