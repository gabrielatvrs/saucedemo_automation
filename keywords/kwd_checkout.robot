*** Settings ***
Resource    ../pages/pg_checkout.robot
Library     SeleniumLibrary

*** Keywords ***
E finalizo a compra com os dados "${nome}" "${sobrenome}" "${cep}"
    Click Button    ${BTN_CHECKOUT}
    Wait Until Element Is Visible    ${TITULO_CHECKOUT}
    Input Text      ${INPUT_NOME}      ${nome}
    Capture Page Screenshot          ${SCREENSHOTS_DIR}/nome.png
    Log To Console    "Valor de sobrenome: ${sobrenome}"
    Input Text      ${INPUT_SOBRENOME}     ${sobrenome}
    Capture Page Screenshot          ${SCREENSHOTS_DIR}/sobrenome.png
    Input Text      ${INPUT_CEP}       ${cep}
    Capture Page Screenshot          ${SCREENSHOTS_DIR}/cep.png
    Click Button    ${BTN_CONTINUAR}
    Click Button    ${BTN_FINALIZAR}

Então a compra é finalizada com sucesso
    Wait Until Element Is Visible    ${MSG_SUCESSO}
    Capture Page Screenshot          ${SCREENSHOTS_DIR}/compra_sucesso.png