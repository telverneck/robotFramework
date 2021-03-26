***Settings***
Documentation       Login Try
Resource            ../resources/base.robot

Suite Setup      Start Session
Suite Teardown   Finish Session
Test Template       Try login


***Keywords
Try login
    [Arguments]     ${email}    ${senha}    ${mensagem}
    Acesso a pagina Login
    Submeto minhas credenciais          ${email}            ${senha}
    Devo ver um toast com a mensagem    ${mensagem}

***Test Cases***
Senha incorreto             senha@errada.com    pwd1234         Ocorreu um erro ao fazer login, cheque as credenciais
Senha em branco             senha@errada.com    ${EMPTY}        O campo senha é obrigatório!
Email em branco             ${EMPTY}            pwd1234         O campo email é obrigatório!
Email e Senha em branco     ${EMPTY}            ${EMPTY}        Os campos email e senha não foram preenchidos!
Email invalido              987sad654s          pwd1234         Ocorreu um erro ao fazer login, cheque as credenciais.
Login incorreto             login#errada.com    pwd1234         Ocorreu um erro ao fazer login, cheque as credenciais
 
    