*** Settings ***
Library    SeleniumLibrary


*** Variables ***



*** Keywords ***
Begin Web Test

    # Initialize Selenium
    #Set Selenium Speed      .1s
    Set Selenium Timeout    10s
    
    
    # Open the browser
    Open Browser    ${URL}    ${BROWSER}

    # Resize the browser window
    #Set Window Position    x=0  y=0
    #Set Window Size        width=1650    height=1050

    Wait Until Page Contains    Customers Are Priority One!


End Web Test
    Close All Browsers