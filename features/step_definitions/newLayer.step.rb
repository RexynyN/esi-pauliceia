Dado('que o usuario tenha feito login') do
    @login = LoginPage.new
    @nl = NewLayerPage.new
    @nl.load
end

Dado('que o usuario queira criar uma camada incompleta') do
    @login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Quando('ele clicar em criar uma camada') do
    @nl.name("Lorem Teste")
    @nl.keywords("testes")
    @nl.description("Um teste para testar o zip do pauliceia")
    @nl.reference("Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nhttps://www.lipsum.com/")
    @nl.sendForm
end

Entao('deve ser renderizado uma mensagem de erro') do
    @nl.checkForm
end