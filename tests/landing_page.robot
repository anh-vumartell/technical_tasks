*** Settings ***
Documentation    This test suite verify Noona mobild service's login page
Resource    ../resources/landing_page.resource
Suite Setup    Open Noona Landing Page
Suite Teardown    Close Browser

*** Test Cases ***
Verify That Log In Page Is Open Correctly
    Check Landing Page Is A Page For Patient
    Check Landing Page Has Correct Title
    Check Landing Page Has Log In Button
    Check Landing Page Has Noona Logo
    Check Landing Page Has Option To Create An Account
    Check Landing Page Footer

*** Keywords ***
Check Landing Page Footer
    Check EU Compliance Description Texts
    Check Web Version Number
    Check EU Compliance Warning Texts
    Check Copymark Text
    Check Privacy Statement Should Open A Privacy Statement Information Page
    Check Privacy Statement Information Page Is Closed
    Check Language Selection Box Opens List Of Language Options


