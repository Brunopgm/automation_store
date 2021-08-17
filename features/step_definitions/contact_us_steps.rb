Dado('que eu esteja na página contact us') do
    visit '/index.php?controller=contact'
end

Quando('eu escolher a opção {string}') do |option|
    select(option, from: @id_contact)   #Pq com o @ funciona?
    # select option, from: "id_contact"
    # expect(page).to have_select(@id_contact, selected: option)
end

Quando('preencher os campos de {string}, {string} e {string}') do |email, order, message|
    find("input[id=email]").set email
    find("input[id=id_order]").set order
    find("textarea[id=message]").set message
end

Quando('anexar a imagem {string}') do |image|
    image = Dir.pwd + "/features/support/fixtures/images/#{image}"
    find("#uniform-fileUpload input[type=file]", visible: false).set image
    sleep 20
end

Quando('clicar em send') do
    click_button "Send"
end

Então('envio a mensagem e vejo o alerta {string}') do |message|
    alert = find(".alert")
    expect(alert.text).to eql message
end