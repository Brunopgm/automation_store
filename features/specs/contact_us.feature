#language: pt

Funcionalidade: Contact us

    Sendo eu um usuário logado
    Quero utilizar o contact us
    Para encaminhar mensagem

Cenario: Enviar uma mensagem

    Dado que eu esteja na página contact us
    Quando eu escolher a opção Customer service
    E preencher os campos de email, oder e mensagem
    E anexar a imagem 
    E clicar em send
    Então envio a mensagem 