*** Settings ***
Documentation    This test suite verify Noona mobild service's login page
Resource    ../resources/login_page.resource
Suite Setup    Open Noona Log In Page
Suite Teardown    Close Browser

*** Test Cases ***
Verify That Log In Page Is Open Correctly
    Check Page Is A Demo Page For Patient
    Check Page Has Correct Title
    Check Page Has Log In Button
    Check Page Has Noona Logo
    Check Page Has Option To Create An Account
