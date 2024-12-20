*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o site e logar
Test Teardown    Fechar navegador

*** Test Cases ***
TC03 - Solicitar visto Americano
    Dado que acesso a página de visto
    E informo o país de origem sendo o Brasil