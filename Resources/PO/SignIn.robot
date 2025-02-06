*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL}    Login
${SIGNIN_EMAIL_TEXTBOX}    id=email-id
${SIGNIN_PASSWORD_TEXTBOX}    id=password
${SIGNIN_SUBMIT_BUTTON}    id=submit-id


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${SIGNIN_HEADER_LABEL}


Login With Valid Credentials
    [Arguments]    ${EMAIL}    ${PASSWORD}
    Fill "Email" Field       ${EMAIL}
    Fill "Password" Field    ${PASSWORD}
    Click "Submit" Button
    

Fill "Email" Field
    [Arguments]    ${EMAIL}
    Input Text    ${SIGNIN_EMAIL_TEXTBOX}    ${EMAIL}


Fill "Password" Field
    [Arguments]    ${PASSWORD}
    Input Text    ${SIGNIN_PASSWORD_TEXTBOX}    ${PASSWORD}


Click "Submit" Button
    Click Button    ${SIGNIN_SUBMIT_BUTTON}