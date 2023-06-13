*** Settings ***
Library    Browser

*** Variables ***
${BASE_URL}    https://demo.patient.noonatest.com/patient/#/sign-in
${BROWSER}    chromium
${LANDING_PAGE_TITLE}    //h1[@class="landing-title"]
${LANDING_PAGE_TITLE_TEXT}    Connect to your clinic using Noona
${LOGIN_BUTTON}    //button//div[text()="Log in"]
${NOONA_LOGO}    //div[@class="logo logo--noona"]
${DONT_HAVE_ACCOUNT_BUTTON}    //button//div[text()="Don't have an account?"]

*** Keywords ***
Open Noona Log In Page
    New Context
    New Page
    Open Browser    ${BASE_URL}    ${BROWSER}

Check Page Is A Demo Page For Patient
    Get Url    *=    demo
    Get Url    *=    patient

Check Page Has Correct Title
    Get Text    ${LANDING_PAGE_TITLE}    ==    ${LANDING_PAGE_TITLE_TEXT}

Check Page Has Log In Button
    Get Element Count    ${LOGIN_BUTTON}    ==    1

Check Page Has Noona Logo
    Get Element Count    ${NOONA_LOGO}    ==    1

Check Page Has Option To Create An Account
    Get Element Count    ${DONT_HAVE_ACCOUNT_BUTTON}    ==    1



