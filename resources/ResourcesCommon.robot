*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}            https://www.saucedemo.com


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome

Fechar o navegador
    Capture Page Screenshot
    Close Browser





      
