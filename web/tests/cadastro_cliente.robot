***Settings***
Documentation       Cadastro Cliente
Resource            ../resources/base.robot

Test Setup      Login Session
Test Teardown   Finish Session


***Test Cases***

Cliente duplicado
    Dado que acesso o formulario de cadastro de Cliente
    E que tenho o seguinte cliente:
    ...     Nome cliente    00000000000     Endereco    11999999999
    Mas esse cpf ja exite no sistema
    Quando incluo o cliente    
    Entao devo ver a notificacao de erro:   Ocorreu um error na criação de um cliente
    
Novo cliente
    Dado que acesso o formulario de cadastro de Cliente
    E que tenho o seguinte cliente:
    ...     Nome cliente    00000000000     Endereco    11999999999
    Quando incluo o cliente    
    Entao devo ver a notificacao:   Cliente cadastrado com sucesso!



