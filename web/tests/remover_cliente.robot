***Settings***
Documentation       Cadastro Cliente
Resource            ../resources/base.robot

Test Setup      Login Session
Test Teardown   Finish Session


***Test Cases***

Remover cliente
    Dado que acesso possuo um cliente indesejado:
    ...     Nome cliente    00000000000     Endereco    11999999999
    E que acesso a lista de clientes    
    Quando removo esse cliente    
    Entao devo ver a notificacao:   Cliente removido com sucesso!



