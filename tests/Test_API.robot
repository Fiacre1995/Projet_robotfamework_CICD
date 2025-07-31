*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Vérifier La Réponse D’un Post
    Create Session    jsonplaceholder    ${BASE_URL}
    ${response}=    Get Request    jsonplaceholder    /posts/1
    Status Should Be    200    ${response}
    Should Contain    ${response.json()["title"]}    sunt aut facere
