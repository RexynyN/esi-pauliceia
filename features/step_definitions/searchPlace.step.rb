Dado('que o usuario logado queira buscar um local') do
  @test = SearchPlacePage.new
  @test.load
end

Quando('ele digitar e clicar em buscar o local') do
  @test.searchPlace('avenida brigadeiro luiz antonio, 116, 1919')
end

Entao('deve acessar o local com sucesso') do
  @home = HomePage.new
  @home.checkSearchPlaceSuccessful
end