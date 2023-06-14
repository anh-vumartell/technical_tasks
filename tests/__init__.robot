*** Settings ***
Resource    ../resources/landing_page.resource
Resource    ../resources/login_page.resource
Suite Setup    Open Noona Landing Page
Suite Teardown    Delete All Cookies