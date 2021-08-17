Dado('que acesso a página de login') do
    visit '/index.php?controller=authentication&back=my-account'
end

Quando('preencho meu {string} e {string}') do |email, password|
    @login_page.open(email, password)
end
  
Então('vejo o dashboard') do
    expect(page).to have_css ".addresses-lists"
end


Quando('preencho minhas credenciais de {string} e {string}') do |email, password|
    find("input[id=email]").set email
    find("input[id=passwd]").set password

    click_button "Sign in"
end

Então('vejo a mensagem: {string}') do |mensagem|
    alert = find(".alert-danger>ol>li")
    expect(alert.text).to have_content mensagem
end