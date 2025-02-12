*** Settings ***
Resource    ../pages/pg_cart.robot   
Resource    ../pages/pg_produtos.robot  
Resource    ../keywords/kwd_login.robot
Resource    ../resources/config.robot
Resource    ../resources/variables.robot
Library     SeleniumLibrary

*** Keywords ***
Dado que realizo login com sucesso 
    Open Browser
    kwd_login.Dado que estou na página de login
    kwd_login.Quando insiro usuário "${usuario_sucesso}" e senha "${senha}"
    kwd_login.Então sou autenticado com sucesso

Quando seleciono o produto ${produto}
    Wait Until Element Is Visible       ${produto}          
    Click Element                       ${produto}

E adiciono 2 produtos ao carrinho
    Click Button  ${BTN_ADD_MOCHILA}
    Click Button  ${BTN_ADD_LANTERNA}

E removo 1 produto do carrinho
    Click Button  ${BTN_REMOVE_BIKE_LIGHT}

E acesso o carrinho
    Wait Until Element Is Visible    ${ICON_CARRINHO}    timeout=10s
    Click Element    ${ICON_CARRINHO}
    Wait Until Element Is Visible    ${TITULO_CARRINHO}    timeout=10s