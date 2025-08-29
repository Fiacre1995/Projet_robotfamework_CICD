*** Settings ***
Library    BuiltIn
Library    OperatingSystem
Library    Collections

*** Test Cases ***
Lire Données Utilisateur Valide
    ${donnees}=    Charger Données JSON    ${CURDIR}/../data/users.json
    ${username}=    Set Variable    ${donnees['valid_user']['username']}
    ${password}=    Set Variable    ${donnees['valid_user']['password']}
    Log    Username: ${username}, Password: ${password}
