***Settings***
Documentation       Sidebar component


***Variables
${CUSTOMERS_LINK}       css:a[href*=customers] 
${CONTRACTS_LINK}       css:a[href*=contracts]
${EQUIPOS_LINK}         css:a[href*=equipos] 
${LOGOUT_BUTTON}        xpath://button//strong[text()='Sair'] 
${X_BUTTON}             cssbutton[type=button]

***Keywords
Go To Customers
    Wait Until Element Is Visible   ${CUSTOMERS_LINK}        10
    Click Element                   ${CUSTOMERS_LINK} 

Go To Contracts
    Wait Until Element Is Visible   ${CONTRACTS_LINK}        10
    Click Element                   ${CONTRACTS_LINK} 

Go To Equipos
    Wait Until Element Is Visible   ${EQUIPOS_LINK}        10
    Click Element                   ${EQUIPOS_LINK} 

Close Sidebar
    Wait Until Element Is Visible   ${X_BUTTON}        10
    Click Element                   ${X_BUTTON} 

logout
    Wait Until Element Is Visible   ${LOGOUT_BUTTON}        10
    Click Element                   ${LOGOUT_BUTTON} 