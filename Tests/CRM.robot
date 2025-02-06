*** Settings ***
Documentation     This is some basic info abou the test suite for the CRM application
Resource          ../Resources/Common.robot
Resource          ../Resources/CRMAPP.robot

Test Setup        Begin Web Test
Test Teardown     End Web Test

# Run the script
# robot -d Results Tests/crm.robot

*** Variables ***
${BROWSER}                 chrome
${URL}                     http://automationplayground.com/crm/
${VALID_LOGIN_EMAIL}       admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD}    admin123



*** Test Cases ***
Home Page Should Load
    [Documentation]    Test the login
    [Tags]             1002    Smoke    Login
    CRMAPP.Go to "Home" Page


Should Be Able To Login with Valid Credentials
    [Documentation]    Test the login
    [Tags]             1002    Smoke    Login
    CRMAPP.Go to "Home" Page
    CRMAPP.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}


Should Be Able To Logout
    [Documentation]    Test the logout
    [Tags]             1004    Smoke    Logout
    CRMAPP.Go to "Home" Page
    CRMAPP.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CRMAPP.Sign Out


Should Be Able To Add New Customer
    [Documentation]    Test adding new customer
    [Tags]             1006    Smoke    Contacts
    CRMAPP.Go to "Home" Page
    CRMAPP.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CRMAPP.Add New Customer
    CRMAPP.Sign Out