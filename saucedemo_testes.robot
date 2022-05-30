*** Settings ***
Documentation       Essa suite testa o site da saucedemo.com

Resource            saucedemo_resources.robot

Suite Setup         Abrir o navegador
Suite Teardown      Fechar o navegador
# Suite Setup    passo desejado
# Suite Teardown    passo desejado


*** Test Cases ***
Caso de teste 01 - Realizar login
    [Documentation]    Esse teste verifica o login no site da saucedemo.com
    [Tags]    login    user_name    password
    Acessar a página do site saucedemo.com
    Informar o usuário    standard_user
    Informar a senha    secret_sauce
    Submeter as credenciais
    Página inicial deve estar aberta possui produtos

Caso de teste 02 - Ordenar os produtos pelo valor (low to high)
    [Documentation]    Esse teste verifica a ordenação dos produtos pelo valor (low to high)
    [Tags]    filto_ordenar    ordenar_produto    filtrar    ordenar
    Verificar se a página possui filtro de produtos
    Clicar no filtro de produtos
    Selecionar a opção "Price (low to high)"

Caso de teste 03 - Adicionar produtos ao carrinho
    [Documentation]    Esse teste verifica a adição dos produtos selecionados no carrinho de compra
    Adicionar o produto "Sauce Labs Onesie" ao carrinho de compras
    Adicionar o produto "Test.allTheThings() T-Shirt(Red)"

Caso de teste 04 - Acessar o carrinho
    [Documentation]    Esse teste verifica o acesso ao carrinho de compras
    [Tags]    adicionar_carrinho    carrinho de compras
    Clicar no carrinho de compras
    Verificar se a página possui "Your Cart"
    Verificar se o produto "Sauce Labs Onesie" está no carrinho de compras
    Verificar se o produto "Test.allTheThings() T-Shirt(Red)" está no carrinho de compras

Caso de teste 05 - Concluir a compra
    [Documentation]    Esse teste verifica se a compra foi concluida com sucesso
    [Tags]    concluir_compra
    Clicar no botão CHECKOUT
    Verificar se a página possui "CHECKOUT: YOUR INFORMATION"
    Informar o "First Name"    Hyarion
    Informar o "Last Name"    Tordek
    Informar o "ZIP/Postal Code"    69918-578
    Clicar no botão "CONTINUE"
    Verificar se a página possui "CHECKOUT: OVERVIEW"
    Clicar no botão "FINISH"
    Verificar se a página possui "THANK YOU FOR YOUR ORDER"
