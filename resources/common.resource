*** Settings ***
Library    Browser
Resource    ../resources/landing_page.resource
Resource    ../resources/login_page.resource

*** Variables ***
${BASE_URL}    https://demo.patient.noonatest.com/patient/#/sign-in
${BROWSER}    chromium

*** Keywords ***
Check Element Visibility
    [Arguments]    ${element}
    Wait For Elements State    ${element}    visible
