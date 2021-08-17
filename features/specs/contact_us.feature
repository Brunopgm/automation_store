#language: pt

Funcionalidade: Contact us

    Sendo eu um usuário logado
    Quero utilizar o contact us
    Para encaminhar mensagem

@mensagem
Cenario: Enviar uma mensagem

    Dado que eu esteja na página contact us
    Quando eu escolher a opção "Customer service"
    E preencher os campos de "bruno.pgm@outlook.com", "1" e "Mensagem escrita pelo usuário"
    E anexar a imagem "naruto.png" 
    E clicar em send
    Então envio a mensagem e vejo o alerta "Your message has been successfully sent to our team."