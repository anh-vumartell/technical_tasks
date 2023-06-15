*** Settings ***
Library    Browser
Resource    common.resource

*** Variables ***
${LANDING_PAGE_TITLE}    //h1[@class="landing-title"]
${LOGIN_BUTTON}    //button//div[text()="Log in"]
${NOONA_LOGO}    //div[@class="logo logo--noona"]
${DONT_HAVE_ACCOUNT_BUTTON}    //button//div[text()="Don't have an account?"]
${LANDING_PAGE_FOOTER}    //div[@class="landing-footer"]
${CE_MARKING_DESCRIPTION}    //div[@class="ce-marking-description"]
${CE_MARKING_DESCRIPTION_P1}    ${CE_MARKING_DESCRIPTION}//div[1]//p[1]
${CE_MARKING_DESCRIPTION_P2}    ${CE_MARKING_DESCRIPTION}//div[2]//p[1]
${CE_MARKING_DESCRIPTION_P3}    ${CE_MARKING_DESCRIPTION}//div[2]//p[2]
${CE_MARKING_DESCRIPTION_P4}    ${CE_MARKING_DESCRIPTION}//div[2]//p[3]
${CE_MARKING_DESCRIPTION_P5}    ${CE_MARKING_DESCRIPTION}//div[2]//p[4]
${CE_MARKING_DESCRIPTION_P6}    ${CE_MARKING_DESCRIPTION}//div[2]//p[5]
${CE_MARKING_DESCRIPTION_P7}    ${CE_MARKING_DESCRIPTION}//div[3]//p[1]
${CE_MARKING_DESCRIPTION_P8}    ${CE_MARKING_DESCRIPTION}//div[3]//p[2]
${CE_MARKING_DESCRIPTION_P9}    ${CE_MARKING_DESCRIPTION}//div[3]//p[3]
${CE_MARKING_DESCRIPTION_P10}    ${CE_MARKING_DESCRIPTION}//div[3]//p[4]
${CE_MARKING_DESCRIPTION_P11}    ${CE_MARKING_DESCRIPTION}//div[3]//p[5]
${VERSION_NUMBER_WEB_P}    //p[@id="version-number-web"]
${CE_MARKING_WARNING}    //div[@class="ce-marking-warning mt-s"]
${CE_MARKING_WARNING_TITLE}    ${CE_MARKING_WARNING}//div[@class="title"]
${CE_MARKING_WARNING_CONTENT1}    ${CE_MARKING_WARNING}//div[@class="content"]//div[1]
${CE_MARKING_WARNING_CONTENT2}    ${CE_MARKING_WARNING}//div[@class="content"]//div[2]
${CE_MARKING_WARNING_CONTENT3}    ${CE_MARKING_WARNING}//div[@class="content"]//div[3]
${COPYMARK}    //div[@class="copymark"]
${PRIVACY_STATEMENT_BUTTON}    //button//div[text()="${PRIVACY_STATEMENT_BUTTON_TEXT}"]
${PRIVACY_STATEMENT_CONTAINER}    //div[@class="container-privacy-policy"]
${ABOUT_BUTTON}    //button//div[text()="${ABOUT_BUTTON_TEXT}"]
${NOONA_DIALOG_CONTAINER}    //div[@class="modal-dialog noona-dialog"]
${CLOSE_DIALOG_BUTTON}    //button[@aria-label="Close dialog button"]
${LANGUAGE_SELECTION_BOX}    //ng-select[@id="locale"]
${DROP_DOWN_LANGUAGE_OPTION_LIST}    //div[@class="ng-dropdown-panel-items scroll-host"]

*** Keywords ***
Open Noona Landing Page
    New Context
    New Page
    Open Browser    ${BASE_URL}    ${BROWSER}

Open Noona Log In Page
    Open Noona Landing Page
    Click Landing Page Log In Button

Click Landing Page Log In Button
    Click    ${LOGIN_BUTTON}

Check Landing Page Is A Page For Patient
    Get Url    *=    patient

Check Landing Page Has Correct Title
    Get Text    ${LANDING_PAGE_TITLE}    ==    ${LANDING_PAGE_TITLE_TEXT}

Check Landing Page Has Log In Button
    Check Element Visibility    ${LOGIN_BUTTON}

Check Landing Page Has Noona Logo
    Check Element Visibility    ${NOONA_LOGO}

Check Landing Page Has Option To Create An Account
    Check Element Visibility    ${DONT_HAVE_ACCOUNT_BUTTON}

Check Landing Page Footer
    Check EU Compliance Description Texts
    Check Web Version Number
    Check EU Compliance Warning Texts

Check EU Compliance Description Texts
    Get Text    ${CE_MARKING_DESCRIPTION_P1}    ==    ${CE_MARKING_DESCRIPTION_P1_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P2}    ==    ${CE_MARKING_DESCRIPTION_P2_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P3}    ==    ${CE_MARKING_DESCRIPTION_P3_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P4}    ==    ${CE_MARKING_DESCRIPTION_P4_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P5}    ==    ${CE_MARKING_DESCRIPTION_P5_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P6}    ==    ${CE_MARKING_DESCRIPTION_P6_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P7}    ==    ${CE_MARKING_DESCRIPTION_P7_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P8}    ==    ${CE_MARKING_DESCRIPTION_P8_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P9}    ==    ${CE_MARKING_DESCRIPTION_P9_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P10}    ==    ${CE_MARKING_DESCRIPTION_P10_TEXT}
    Get Text    ${CE_MARKING_DESCRIPTION_P11}    ==    ${CE_MARKING_DESCRIPTION_P11_TEXT}

Check Web Version Number
    Get Text    ${VERSION_NUMBER_WEB_P}    ==    ${VERSION_NUMBER_WEB_TEXT}

Check EU Compliance Warning Texts
    Get Text    ${CE_MARKING_WARNING_TITLE}    ==    ${CE_MARKING_WARNING_TITLE_TEXT}
    Get Text    ${CE_MARKING_WARNING_CONTENT1}    ==    ${CE_MARKING_WARNING_CONTENT1_TEXT}
    Get Text    ${CE_MARKING_WARNING_CONTENT2}    ==    ${CE_MARKING_WARNING_CONTENT2_TEXT}
    Get Text    ${CE_MARKING_WARNING_CONTENT3}    ==    ${CE_MARKING_WARNING_CONTENT3_TEXT}

Check Copymark Text
    Get Text    ${COPYMARK}    ==    ${COPYMARK_TEXT}

Check Privacy Statement Button Should Open A Privacy Statement Information Page
    Click    ${PRIVACY_STATEMENT_BUTTON}
    Get Text    ${NOONA_DIALOG_CONTAINER}    *=    ${NOONA_PRIVACY_DOCUMENT_TITLE_TEXT}

Close Noona Dialog
    Click    ${CLOSE_DIALOG_BUTTON}
    Wait For Elements State    ${NOONA_DIALOG_CONTAINER}    hidden

Check About Button Should Open An About Information Page
    Click    ${ABOUT_BUTTON}
    Get Text    ${NOONA_DIALOG_CONTAINER}    *=    ${NOONA_ABOUT_DOCUMENT_TITLE_TEXT}

Check Language Selection Box Opens List Of Language Options
    Click    ${LANGUAGE_SELECTION_BOX}
    Check Element Visibility    ${DROP_DOWN_LANGUAGE_OPTION_LIST}
