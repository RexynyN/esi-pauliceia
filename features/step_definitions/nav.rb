Dado('que o usuario queira ir para a tela de Mapa') do
  @test = NavPage.new
  @test.load
end

Dado('ele clicar em Mapa') do
  @test.navMap
end

Dado('deve acessar a tela de Mapa com sucesso') do
  @home = HomePage.new
  @home.checkNavMapSuccessful
end