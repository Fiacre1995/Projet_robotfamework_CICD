*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/pages/LoginPage.robot
Resource    ../resources/pages/DashboardPage.robot

Suite Setup     Open Login Page
Suite Teardown  Fermer Browser

*** Test Cases ***
Successful Login With Valid Credentials
    [Tags]    demo
    Log    Bonjour depuis Robot Framework !
    #Login With Credentials    ${VALID_USER}    ${VALID_PASSWORD}
    #Dashboard Should Be Visible
