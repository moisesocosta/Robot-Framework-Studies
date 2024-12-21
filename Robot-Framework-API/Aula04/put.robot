*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${HOST}    https://dummyjson.com/products

#Rotas
${UPDATE_PRODUCT}    products/id-product
${DELETE_PRODUCT}    products/id-product-delete

*** Keywords ***
Adicionar um novo produto
    [Arguments]    ${id}    ${title}    ${price}    ${brand}    ${description}=none

    &{headers}    Create Dictionary    Content-type-application/json
    &{body}    Create Dictionary    title=${title}    description=${description}    price=${price}    brand=${brand}

    PUT    url=${HOST}/${UPDATE_PRODUCT}    headers=&{headers}    json=&{body}

Deletar produto de id ${id}
    &{headers}    Create Dictionary    Content-type-application/json
    &{DELETE_PRODUCT}    Replace String    &{DELETE_PRODUCT}    d-product-delete    ${id}

    DELETE    url=${HOST}/${DELETE_PRODUCT}    headers=&{headers}    

*** Test Cases ***
TC01 - Atualizar um produto existente
  Adicionar um novo produto    title=iphone 14    description=celular da apple    price=7000    brand=Apple

TC02 - Deletar produto especifico
  Deletar produto de id 9
