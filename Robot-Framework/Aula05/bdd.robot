*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados do teste
${NomeDaMusica}    Ariana Grande Positions

#Variáveis de configuração
${URL}    https://www.youtube.com/
${Browser}    chrome

#Elementos
${Input_pesquisa}    //input[@id="search"]
${Button_pesquisa}    //button[@id="search-icon-legacy"]
${Primeiro}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}    //yt-formatted-string[contains(text(), "Compartilhar")]

*** Keywords ***
Dado que eu acesso o site do Youtube
  Open Browser    ${URL}    ${Browser} 

Quando digito o nome da musica
  Input Text    ${Input_pesquisa}    ${NomeDaMusica}

E clico no botão buscar
  Click Element    ${Button_pesquisa}

E clico na primeira opção na linha
  Wait Until Element Is Visible ${Primeiro}    10
  Click Element    ${Primeiro}

Então o vídeo é executado
  Wait Until Element Is Visible ${Prova}    10
  Element Should Be Visible    ${Prova}
  Sleep 1s
  Close Browser

*** Test Cases ***
Cenário 1: Executar vídeo no site do Youtube
  [Tags] Regressivo
  Dado que eu acesso o site do Youtube
  Quando digito o nome da musica
  E clico no botão buscar
  E clico na primeira opção na linha
  Então o vídeo é executado