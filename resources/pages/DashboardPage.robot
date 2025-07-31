*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DASHBOARD_ELEMENT}    xpath=//div[@class='dashboard']

*** Keywords ***
Dashboard Should Be Visible
    Wait Until Element Is Visible    ${DASHBOARD_ELEMENT}    10s
    Page Should Contain Element      ${DASHBOARD_ELEMENT}
