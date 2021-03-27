***Settings***
Documentation       Validacao de cadastro cliente
Resource            ../resources/base.robot

Suite Setup      Login Session
Suite Teardown   Finish Session


***Test Cases***
Validar campos obrigatório
    Dado que acesso o formulario de cadastro de Cliente
    E que tenho o seguinte cliente:
    ...     ${EMPTY}    ${EMPTY}     ${EMPTY}    ${EMPTY}
    Quando incluo o cliente
    Entao devo ver mensagens nos campos de cadastro de Cliente que sao obrigatórios


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

Telefone inválido
    [Template]  Validar campos
    [Tags]      mandatory
    nome     93471475249      endereco     987     Telefone inválido

CPF inválido
    [Template]  Validar campos
    [Tags]      mandatory
    nome     9347      endereco     92981336555     CPF inválido





