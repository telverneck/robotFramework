***Settings***
Documentation       Clientes Page

***Variables
${REGISTER_BUTTON}      css:a[href*=register]
${NAME_TEXT}            id:name
${CPF_TEXT}             id:cpf
${ADDRESS_TEXT}         id:address
${PHONE_TEXT}           id:phone_number 
${SAVE_BUTTON}          xpath://button[text()='CADASTRAR']
${SUCCESS_ALERT}        css:div[type=success]

***Keywords***
Dado que acesso o formulario de cadastro de Cliente
    Wait Until Element Is Visible   ${CUSTOMERS_LINK}        10
    Click Element                   ${CUSTOMERS_LINK} 
    Wait Until Element Is Visible   ${REGISTER_BUTTON}       10
    Click Element                   ${REGISTER_BUTTON}

Quando incluo o cliente:
    [Arguments]     ${name}    ${cpf}     ${address}    ${phone}
    Delete Customer By Cpf  ${cpf}
    Input Text       ${NAME_TEXT}       ${name}
    Input Text       ${CPF_TEXT}        ${cpf}
    Input Text       ${ADDRESS_TEXT}    ${address}
    Input Text       ${PHONE_TEXT}      ${phone}
    Click Button     ${SAVE_BUTTON}
    

Entao devo ver a notificacao:   
    [Arguments]     ${message}
    Wait Until Element Is Visible              ${SUCCESS_ALERT}      ${TIMEOUT} 
    Wait Until Element Contains                ${SUCCESS_ALERT}      ${message}

Entao devo ver mensagens nos campos de cadastro de Cliente que sao obrigatórios
    Wait Until Page Contains        Nome é obrigatório          ${TIMEOUT} 
    Wait Until Page Contains        CPF é obrigatório           ${TIMEOUT} 
    Wait Until Page Contains        Endereço é obrigatório      ${TIMEOUT} 
    Wait Until Page Contains        Telefone é obrigatório      ${TIMEOUT} 