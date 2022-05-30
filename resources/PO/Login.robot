*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LOGIN_URL}            https://www.saucedemo.com
${INPUT_LOGIN}          id=user-name
${INPUT_PASSWORD}       id=password
${BUTTON_LOGIN}         id=login-button
${TITLE_PRODUCT_PAGE}   //span[@class="title"]


*** Keywords ***

Acessar a página do site saucedemo.com
    Go To    url=${LOGIN_URL}
    Element Should Be Visible    locator=${INPUT_LOGIN}

Informar o usuário
    [Arguments]    ${user-name}
    Input Text    ${INPUT_LOGIN}    ${user-name}

informar a senha
    [Arguments]    ${password}
    Input Password    ${INPUT_PASSWORD}    ${password}
    Sleep    2s

Submeter as credenciais
    Click Button    ${BUTTON_LOGIN}

Página inicial deve estar aberta possui produtos
    Element Should Be Visible    ${TITLE_PRODUCT_PAGE}


        




      
