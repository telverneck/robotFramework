***Settings***
Documentation       Clientes Page

***Variables
${REGISTER_BUTTON}              css:a[href*=register]
${NAME_TEXT}                    id:name
${CPF_TEXT}                     id:cpf
${ADDRESS_TEXT}                 id:address
${PHONE_TEXT}                   id:phone_number 
${SAVE_BUTTON}                  xpath://button[text()='CADASTRAR']
${SUCCESS_ALERT}                css:div[type=success]
${ERROR_ALERT}                  css:div[type=error]
${NAME_MANDATORY}               css:label[for=name]
${CPF_MANDATORY}                css:label[for=cpf]
${ADDRESS_MANDATORY}            css:label[for=address]
${PHONE_MANDATORY}              css:label[for*=phone] 
${DELETE_CUSTOMER_BUTTON}       xpath://button[text()='APAGAR']


***Keywords***
Dado que acesso o formulario de cadastro de Cliente
    Go To Customers
    Wait Until Element Is Visible   ${REGISTER_BUTTON}       10
    Click Element                   ${REGISTER_BUTTON}

E que acesso a lista de clientes
    Go To Customers

Dado que acesso possuo um cliente indesejado:
    [Arguments]     ${name}    ${cpf}     ${address}    ${phone}
    Delete Customer By Cpf  ${cpf}
    Insert Customer         ${name}    ${cpf}     ${address}    ${phone}
    Set Test Variable   ${cpf}

E que tenho o seguinte cliente:
    [Arguments]     ${name}    ${cpf}     ${address}    ${phone}
    Delete Customer By Cpf  ${cpf}

    Set Test Variable   ${name}
    Set Test Variable   ${cpf}
    Set Test Variable   ${address}
    Set Test Variable   ${phone}

Quando incluo o cliente
    
    Input Text       ${NAME_TEXT}       ${name}
    Input Text       ${CPF_TEXT}        ${cpf}
    Input Text       ${ADDRESS_TEXT}    ${address}
    Input Text       ${PHONE_TEXT}      ${phone}
    Click Button     ${SAVE_BUTTON}

Quando removo esse cliente 
    ${cpf_formatado} =                      Format Cpf                                      ${cpf}
    Wait Until Element Is Visible           xpath://td[text()='${cpf_formatado}']           ${TIMEOUT} 
    Click Element                           xpath://td[text()='${cpf_formatado}']
    Wait Until Element Is Visible           ${DELETE_CUSTOMER_BUTTON}                       ${TIMEOUT} 
    Click Element                           ${DELETE_CUSTOMER_BUTTON}
    
Mas esse cpf ja exite no sistema
    Insert Customer     ${name}    ${cpf}     ${address}    ${phone}

Entao devo ver a notificacao:   
    [Arguments]     ${message}
    Wait Until Element Is Visible              ${SUCCESS_ALERT}      ${TIMEOUT} 
    Wait Until Element Contains                ${SUCCESS_ALERT}      ${message}

Entao devo ver a notificacao de erro:   
    [Arguments]     ${message}
    Wait Until Element Is Visible              ${ERROR_ALERT}      ${TIMEOUT} 
    Wait Until Element Contains                ${ERROR_ALERT}      ${message}

Entao devo ver mensagens nos campos de cadastro de Cliente que sao obrigatórios
    Wait Until Element Contains     ${NAME_MANDATORY}        Nome é obrigatório         ${TIMEOUT}
    Wait Until Element Contains     ${CPF_MANDATORY}         CPF é obrigatório          ${TIMEOUT}
    Wait Until Element Contains     ${ADDRESS_MANDATORY}     Endereço é obrigatório     ${TIMEOUT}
    Wait Until Element Contains     ${PHONE_MANDATORY}       Telefone é obrigatório     ${TIMEOUT}

Entao devo ver o texto:
    [Arguments]       ${mensagem}
    Wait Until Page Contains        ${mensagem}          ${TIMEOUT}

Validar campos
    [Arguments]     ${nome}     ${cpf}      ${endereco}     ${telefone}     ${mensagem}
    Dado que acesso o formulario de cadastro de Cliente
    E que tenho o seguinte cliente:
    ...     ${nome}    ${cpf}     ${endereco}    ${telefone}
    Quando incluo o cliente    
    Entao devo ver o texto:         ${mensagem}