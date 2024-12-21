*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Button}    //button[@id="btnTeste"]

*** Keywords ***
Abrir Site
    Wait Until Element Is Visible    ${button}    10s
    Click Element    ${button}

*** Test Cases ***
TC01 - Teste 1
    Abrir navegador e acessar site
    Fechar o navegador