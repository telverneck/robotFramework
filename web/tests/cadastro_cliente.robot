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


