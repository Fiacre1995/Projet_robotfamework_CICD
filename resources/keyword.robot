*** Settings ***
Library    String
Library    JSONLibrary
Library    OperatingSystem
Library    SeleniumLibrary
Library    DateTime
Library    BuiltIn
Library    Collections
Library    Process


*** Variables ***
${JSON_PATH}      ${CURDIR}/../data/user.json
${OUTPUT_JSON}      ${CURDIR}/../data/user_data.json
${PY_SCRIPT}      ${CURDIR}/../libs/generate_faker.py
${USER_JSON}      ${CURDIR}/../data/user_data.json

*** Test Cases ***
Charger Un Utilisateur Valide
    ${data}=    charger fichier json    ${JSON_PATH}
    ${username}=    Get Value From Json    ${data}    $.valid_user.username
    ${password}=    Get Value From Json    ${data}    $.valid_user.password
    Log    Username: ${username}, Password: ${password}

Créer Email Unique
    ${uuid}=    Generate Random String    8
    ${email}=   Set Variable    test_${uuid}@example.com
    Log    Email dynamique : ${email}

Date D’aujourd’hui Et Demain
    ${today}=    Get Current Date    result_format=%Y-%m-%d
    ${tomorrow}=    Add Time To Date    ${today}    1 days    result_format=%Y-%m-%d
    Log    Aujourd'hui: ${today}, Demain: ${tomorrow}

Utiliser Un Utilisateur Généré
    Run Process    python    ${PY_SCRIPT}
    Should Exist   ${USER_JSON}
    ${data}=    charger fichier json    ${USER_JSON}
    ${name}=    Get Value From Json    ${data}    $.name
    ${email}=    Get Value From Json    ${data}    $.email
    ${username}=    Get Value From Json    ${data}    $.username
    ${password}=    Get Value From Json    ${data}    $.password
    Log    Nom : ${name}, Email : ${email}, Nom Utilisateur : ${username}, Mot de Passe : ${password},

*** Keywords ***
charger fichier json
    [Arguments]    ${fichier}
    ${data}=    Load Json From File    ${fichier}
    [Return]    ${data}



