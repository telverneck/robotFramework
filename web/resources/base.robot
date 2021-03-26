***Settings***
Library             SeleniumLibrary
Library             libs/db.py

Resource            ../resources/kws.robot
Resource            ../resources/hooks.robot
Resource            ../resources/pages/LoginPage.robot
Resource            ../resources/pages/CustomersPage.robot
Resource            ../resources/components/Sidebar.robot

***Variables
${BASE_URL}         http://zepalheta-web:3000/
${adminEmail}            admin@zepalheta.com.br
${adminPassword}         pwd123
${LONGTIMEOUT}           30
${TIMEOUT}               15