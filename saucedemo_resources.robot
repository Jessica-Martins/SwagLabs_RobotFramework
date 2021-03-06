*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LOGIN_URL}            https://www.saucedemo.com
${INPUT_LOGIN}          id=user-name
${INPUT_PASSWORD}       id=password
${BUTTON_LOGIN}         id=login-button
${TITLE_PRODUCT_PAGE}   //span[@class="title"]
${FILTER_PRODUCT}       //select[contains(@class,'container')]
${SELECT_FILTER}        //option[@value='lohi']
${SHOPPING_CART}        //*[@id="shopping_cart_container"]/a
${BUTTON_CHECKOUT}      id=checkout
${BUTTON_CONTINUE}      id=continue
${BUTTON_FINISH}        id=finish
${INPUT_FIRST_NAME}     id=first-name
${INPUT_LAST_NAME}      id=last-name
${INPUT_POSTAL_CODE}    id=postal-code


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome

Fechar o navegador
    Capture Page Screenshot
    Close Browser

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

Verificar se a página possui filtro de produtos
    Element Should Contain    ${FILTER_PRODUCT}    expected=Name (A to Z)
Clicar no filtro de produtos
    Click Element    ${FILTER_PRODUCT}
    Sleep    2s
    
Selecionar a opção ${ORDER_PRODUCT}
     Select From List By Index    ${FILTER_PRODUCT}    2
     Sleep    2s
     
 Adicionar o produto "Sauce Labs Onesie" ao carrinho de compras
     Click Button    id=add-to-cart-sauce-labs-onesie

Adicionar o produto "Test.allTheThings() T-Shirt(Red)"
     Click Button    id=add-to-cart-test.allthethings()-t-shirt-(red)
     Sleep    2s

clicar no carrinho de compras
    Click Element    ${SHOPPING_CART}

Verificar se a página possui "Your Cart"
    Element Should Be Visible    //span[@class='title'][contains(.,'Your Cart')]

Verificar se o produto "Sauce Labs Onesie" está no carrinho de compras
    Element Should Contain    locator=//a[contains(.,'Sauce Labs Onesie')]    expected=Sauce Labs Onesie

Verificar se o produto "Test.allTheThings() T-Shirt(Red)" está no carrinho de compras
    Element Should Contain    locator=//a[contains(.,'Test.allTheThings() T-Shirt (Red)')]    expected=Test.allTheThings() T-Shirt (Red)
    Sleep    2s

Clicar no botão CHECKOUT
    Click Button    ${BUTTON_CHECKOUT}    

Verificar se a página possui "CHECKOUT: YOUR INFORMATION"
    Element Should Be Visible    //span[@class='title'][contains(.,'Checkout: Your Information')]

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
    
Clicar no botão "FINISH"
    Click Button    ${BUTTON_FINISH}

Verificar se a página possui "THANK YOU FOR YOUR ORDER"
    Element Should Be Visible    //h2[@class='complete-header'][contains(.,'THANK YOU FOR YOUR ORDER')]
    Sleep    2s
        




      
