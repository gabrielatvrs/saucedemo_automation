*** Settings ***
Resource    ../pages/pg_login.robot   
Resource    ../resources/config.robot
Library     SeleniumLibrary

*** Keywords ***
Abrir navegador
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${INPUT_USUARIO}

Fechar navegador
    Close Browser

Dado que estou na página de login
    Go To    ${LOGIN_URL}
    Wait Until Element Is Visible    ${INPUT_USUARIO}

Quando insiro usuário "${usuario}" e senha "${senha}"
    Input Text    ${INPUT_USUARIO}    ${usuario}
    Input Text    ${INPUT_SENHA}    ${senha}
    Capture Page Screenshot          ${SCREENSHOTS_DIR}/login.png
    Click Button  ${BTN_LOGIN}
    
Então sou autenticado com sucesso
    Wait Until Element Is Visible    ${LOGO_INVENTORY}
    Capture Page Screenshot          ${SCREENSHOTS_DIR}/autenticado.png

Então verifico mensagem exibida
    Wait Until Element Is Visible   ${MSG_ERRORLOGIN}
    Element Text Should Be          ${MSG_ERRORLOGIN}       Epic sadface: Sorry, this user has been locked out.