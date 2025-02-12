*** Settings ***
Documentation   Teste de fluxo completo de compra de produtos no SauceDemo
Resource       ../keywords/kwd_login.robot
Resource       ../keywords/kwd_cart.robot
Resource       ../keywords/kwd_checkout.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

*** Test Cases ***
Finalizar compra com sucesso
    [Tags]      TST-4   e2e
    Dado que estou na página de login
    Quando insiro usuário "${usuario_sucesso}" e senha "${senha}"
    E adiciono 2 produtos ao carrinho
    E removo 1 produto do carrinho
    E acesso o carrinho
    E finalizo a compra com os dados "Gabriela" "Test" "12345"
    Então a compra é finalizada com sucesso