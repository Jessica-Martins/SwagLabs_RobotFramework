*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BUTTON_FINISH}        id=finish


*** Keywords ***

Verificar se o valor total da compra é "$25.90"
    Element Should Be Visible    //div[@class='summary_total_label'][contains(.,'Total: $25.90')]
    
Clicar no botão "FINISH"
    Click Button    ${BUTTON_FINISH}

Verificar se a página possui "THANK YOU FOR YOUR ORDER"
    Element Should Be Visible    //h2[@class='complete-header'][contains(.,'THANK YOU FOR YOUR ORDER')]
    Sleep    2s