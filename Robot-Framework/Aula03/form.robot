*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}    id:name
${input_phone}    id:phone
${input_email}    id:email
${input_password}    id:password
${textarea_address}    id:textarea_address
${button_submit}    name:submit


*** Keywords ***
Abrir navegador e acessar o site
  Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

Preencher campos
  Input Text    ${input_name}    Teste Automatizado
  Input Text    ${input_phone}    1234567890
  Input Text    ${input_email}    teste@itera.com
  Input Text    ${input_password}    123456
  Input Text    ${textarea_address}    Rua Teste, 123

Clicar em submit
  Click Button    ${button_submit}

Fechar navegador 
  Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
  Abrir navegador e acessar o site
  Preencher campos
  Clicar em submit
  Fechar navegador
