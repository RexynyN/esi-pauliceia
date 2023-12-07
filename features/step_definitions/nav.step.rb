Dado('que o usuario queira ir para a tela de Mapa') do
  @test = NavPage.new
  @test.load
end

Quando('ele clicar em Mapa') do
  @test.clickNavMap
end

Entao('deve acessar a tela de Mapa com sucesso') do
  @home = HomePage.new
  @home.checkNavMapSuccessful
end