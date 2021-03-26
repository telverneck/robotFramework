***Settings***
Documentation       Login
Resource        ../resources/base.robot


Test Setup      Start Session
Test Teardown   Finish Session

***Test Cases***
Login do administrator
    Acesso a pagina Login
    Submeto minhas credenciais      admin@zepalheta.com.br      pwd123
    Devo ver a area logada


    