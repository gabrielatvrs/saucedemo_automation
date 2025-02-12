*** Settings ***
Documentation       Testes referentes ao login no site Saucedemo.com
Resource            ../keywords/kwd_login.robot
Resource            ../resources/variables.robot    
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Realizar login com sucesso
    [Tags]     mandatory    TST-1 
    Dado que estou na página de login
    Quando insiro usuário "${usuario_sucesso}" e senha "${senha}"
    Então sou autenticado com sucesso

Tentativa de login com usuário bloqueado
    [Tags]     TST-2    
    Dado que estou na página de login
    Quando insiro usuário "${usuario_block}" e senha "${senha}"
    Então verifico mensagem exibida