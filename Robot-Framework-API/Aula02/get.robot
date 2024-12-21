*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${HOST}    https://dummyjson.com/products

#Rotas
${GET_ALL_PRODUCTS}    products
${GET_SINGLE_PRODUCT}    products/id-product

*** Keywords ***
Pegar todos os produtos
    &{headers}    Create Dictionary    Content-type-application/json

    GET    url=${HOST}/${GET_ALL_PRODUCTS}    headers=&{headers}

Pegar um único produto de id  ${id}
    &{headers}    Create Dictionary    Content-type-application/json

    ${GET_SINGLE_PRODUCT}=    Replace String    ${GET_SINGLE_PRODUCT}    id-product    ${id}
    
    GET    url=${HOST}/${GET_SINGLE_PRODUCT}    headers=&{headers}

*** Test Cases ***
TC01 - Realizar busca de todos os produtos  
  Pegar todos os produtos

TC02 - Realizar busca de um único produto 
  Pegar um único produto de id 15