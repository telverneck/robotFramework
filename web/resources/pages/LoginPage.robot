***Settings***
Documentation       Login Page

***Variables
${EMAIL_TEXT}       id:txtEmail
${PASSWORD_TEXT}    css:input[type=password] 
${LOGIN_BUTTON}     css:button[id*=Login]



***Keywords
login
    [Arguments]     ${email}    ${senha}
    Input Text      ${EMAIL_TEXT}                ${email}
    Input Text      ${PASSWORD_TEXT}             ${senha}
    Click Button    ${LOGIN_BUTTON}