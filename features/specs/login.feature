#language: pt

Funcionalidade: Fazer login

    Sendo eu usuário do site
    Quero realizar o login utilizando meu usuário e senha
    Para visualizar o dashboard

@login
Cenario: Login

    Dado que acesso a página de login
    Quando preencho meu "bruno.pgm@outlook.com" e "pwd123"
    Então vejo o dashboard

@tentativa_login
    Esquema do Cenario: Tentativa de login

        Dado que acesso a página de login
        Quando preencho minhas credenciais de "<email_input>" e "<password_input>"
        Então vejo a mensagem: "<mensagem_output>"

        Exemplos:
            | email_input           | password_input | mensagem_output            |
            |                       | pwd123         | An email address required. |
            | bruno.pgm@outlook.com |                | Password is required.      |           
            | bruno.pgm#outlook.com | pwd123         | Invalid email address.     |
            | bruno.pgm@outlook.com | 123            | Invalid password.          |
