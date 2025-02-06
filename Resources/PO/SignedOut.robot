*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNEDOUT_HEADER_LABEL}    Signed Out


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${SIGNEDOUT_HEADER_LABEL}