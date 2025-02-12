*** Settings ***
Documentation       Teste referente à escolha de produtos no site Saucedemo.com
Resource            ../keywords/kwd_cart.robot     
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Realizar seleção de produtos
    [Tags]      TST-3   WIP 
    Dado que realizo login com sucesso
    E adiciono 2 produtos ao carrinho
    E removo 1 produto do carrinho
    E acesso o carrinho
    Então verifico os itens presentes no meu carrinho