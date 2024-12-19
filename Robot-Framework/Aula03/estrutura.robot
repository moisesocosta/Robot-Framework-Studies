*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    hhhh
${variavel3}    155455

*** Keywords ***
Abrir site google
  Open Browser    https://www.google.com.br/    chrome

Abrir site globo
  Open Browser    https://www.globo.com/    chrome

Fechar navegador 
  Close Browser

*** Test Cases ***
Cenário 1: Teste de abrir site google
  Abrir site google
  Fechar navegador

Cenário 2: Teste de abrir site globo
  Abrir site globo
  Fechar navegador