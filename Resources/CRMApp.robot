*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/SignedOut.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/AddCustomer.robot


*** Variables ***



*** Keywords ***
Go To "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded


Login With Valid Credentials
    [Arguments]    ${EMAIL}    ${PASSWORD}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${EMAIL}    ${PASSWORD}
    Customers.Verify Page Loaded


Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added


Sign Out
    TopNav.Click "Sign Out" Link
    SignedOut.Verify Page Loaded