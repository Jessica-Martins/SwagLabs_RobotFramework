*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BUTTON_CONTINUE}      id=continue
${INPUT_FIRST_NAME}     id=first-name
${INPUT_LAST_NAME}      id=last-name
${INPUT_POSTAL_CODE}    id=postal-code


*** Keywords ***
Informar o "First Name"
    [Arguments]    ${first-name}
    Input Text    ${INPUT_FIRST_NAME}    ${first-name}

Informar o "Last Name"
    [Arguments]    ${last-name}
    Input Text    ${INPUT_LAST_NAME}    ${last-name}


Informar o "ZIP/Postal Code"
    [Arguments]    ${postal-code}
    Input Text    ${INPUT_POSTAL_CODE}    ${postal-code}
    Sleep   2s

Clicar no botão "CONTINUE"
    Click Button    ${BUTTON_CONTINUE}

Verificar se a página possui "CHECKOUT: OVERVIEW"
    Element Should Be Visible    //span[@class='title']