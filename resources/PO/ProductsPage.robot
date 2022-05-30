*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${FILTER_PRODUCT}       //select[contains(@class,'container')]
${SELECT_FILTER}        //option[@value='lohi']


*** Keywords ***

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