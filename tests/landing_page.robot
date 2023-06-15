*** Settings ***
Documentation    This test suite verifies Noona mobile service's landing page
Resource    ../resources/common.resource
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
    Check Privacy Statement Document Is Opened And Closed Correctly
    Check About Document Is Opened And Closed Correctly
    Check Language Selection Box Opens List Of Language Options

Check Privacy Statement Document Is Opened And Closed Correctly
    Check Privacy Statement Button Should Open A Privacy Statement Information Page
    Close Noona Dialog

Check About Document Is Opened And Closed Correctly
    Check About Button Should Open An About Information Page
    Close Noona Dialog

