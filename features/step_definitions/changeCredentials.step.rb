Dado('que o usuario esteja logado') do
    @login = LoginPage.new
    @prof = ProfilePage.new
    @prof.load
end

Dado('que o usuario queira alterar o nome e o username') do
    @login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Quando('ele digitar o nome e o username valido e clicar em submit') do
    @prof.testNameChanges
end
 
Entao('deve ser alterado o nome e o username') do
    # Ele vai tão rápido que as mudanças nn tem tempo pra processar
    sleep 3
    @prof.load
    expect(@prof).to have_secret_value 
    @prof.nameChanger(CREDENTIAL[:user][:name], CREDENTIAL[:user][:username])
end