*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${SHOPPING_CART}        //*[@id="shopping_cart_container"]/a
${BUTTON_CHECKOUT}      id=checkout


*** Keywords ***

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