Dado('que o usuario logado queira visualizar um mapa antigo') do
    @home = HomePage.new
    @home.load
end

Quando('ele clicar no mapa do ano desejado') do
    @home.clickMap
end

Entao('o novo mapa deve ser renderizado') do
    @home.checkMapLoad
end

Entao('o mapa antigo deve ser desselecionado') do
    @home.checkMap
end