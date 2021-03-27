***Settings***
Documentation       Cadastro Cliente
Resource            ../resources/base.robot

Test Setup      Login Session
Test Teardown   Finish Session



***Test Cases***
Novo cliente
    Dado que acesso o formulario de cadastro de Cliente
    Quando incluo o cliente:
    ...     Nome cliente    00000000000     Endereco    11999999999
    Entao devo ver a notificacao:   Cliente cadastrado com sucesso!

Campos obrigatório
    Dado que acesso o formulario de cadastro de Cliente
    Quando incluo o cliente:
    ...     ${EMPTY}    ${EMPTY}     ${EMPTY}    ${EMPTY}
    Entao devo ver mensagens nos campos de cadastro de Cliente que sao obrigatórios

# Migrar o conteudo abaixo para um novo caso de teste 
Nome é obrigatorio
    [Template]  Validar campos
    [Tags]      mandatory
    ${EMPTY}     93471475249      endereco     92981336555     Nome é obrigatório

cpf é obrigatorio
    [Template]  Validar campos
    [Tags]      mandatory
    nome     ${EMPTY}      endereco     92981336555     CPF é obrigatório

Endereço é obrigatorio
    [Template]  Validar campos
    [Tags]      mandatory
    nome     93471475249      ${EMPTY}     92981336555     Endereço é obrigatório

Telefone é obrigatorio
    [Template]  Validar campos
    [Tags]      mandatory
    nome     93471475249      endereco     ${EMPTY}     Telefone é obrigatório

***Keywords
Validar campos
    [Arguments]     ${nome}     ${cpf}      ${endereco}     ${telefone}     ${mensagem}
    Dado que acesso o formulario de cadastro de Cliente
    Quando incluo o cliente:
    ...     ${nome}    ${cpf}     ${endereco}    ${telefone}
    Entao devo ver o texto:         ${mensagem}
