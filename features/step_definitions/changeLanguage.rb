Dado('que o usuario queira mudar a linguagem do site') do
    @home = HomePage.new
    @home.load
end

Quando('ele clicar na bandeira americana') do
    @home.clickEnglish
end

Entao('deve ser alterado o idioma do site') do
    @home.checkEnglish
end