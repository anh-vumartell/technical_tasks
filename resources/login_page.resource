*** Settings ***
Library    Browser

*** Variables ***
${USERNAME_INPUT}    //input[@id="username"]
${PASSWORD_INPUT}    //input[@id="password"]
${LOGIN_SUBMIT_BUTTON}    //input[@id="kc-login"]
${ERROR_MESSAGE_CONTAINER}    //div//span[@id="input-error"]

*** Keywords ***
Input Credentials
    [Arguments]     ${username}    ${password}
    Type Text    ${USERNAME_INPUT}    ${username}
    Type Text    ${PASSWORD_INPUT}    ${password}

Submit Credentials
    Click    ${LOGIN_SUBMIT_BUTTON}

Check That Error Message Is Visible With Correct Error Message Content
    Get Text    ${ERROR_MESSAGE_CONTAINER}    ==    ${ERROR_MESSAGE_TEXT}