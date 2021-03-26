***Variables
${ERROR_ALERT}      css:div[type=Error] p
${LOGO_IMAGE}       css:.logo-side

***Keywords***
Acesso a pagina Login
    Go To        ${BASE_URL}

Submeto minhas credenciais 
    [Arguments]     ${email}    ${password}

    login  ${email}  ${password}

Devo ver a area logada
    Wait Until Element Is Visible   ${LOGO_IMAGE}      15
    Page Should Contain Element     ${LOGO_IMAGE}      

Devo ver um toast com a mensagem
    [Arguments]     ${mensagem}

    Wait Until Element Is Visible       ${ERROR_ALERT}      15
    Element Should Contain              ${ERROR_ALERT}      ${mensagem}
    