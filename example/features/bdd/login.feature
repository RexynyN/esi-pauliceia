# language: pt

Funcionalidade: Login com sucesso 
Para ter acesso ao sistema
O usuario do Linkedin
Deseja logar no site

# Contexto:
#     Dado que o usuario esteja logado

Cenario: Login com sucesso
Dado que o usuario queira se logar
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso

# Cenario: Login com perda de conexao 
# Dado que o usuario queira se logar
# E ele perca a conexao com a internet
# Quando ele digitar as credenciais validas
# Entao aviso sobre a falta de conexao deve aparecer
# E ele nao ira se logar


# Cenario: Troca de senha
# Dado que o usuario esqueceu a senha
# E ele queira trocar sua senha antiga
# E ele ainda tenha acesso ao email cadastrado
# Quando ele escolher uma nova senha
# E confirmar a troca pelo email cadastrado
# Entao sua senha deve ser trocada com sucesso


# Esquema do Cenario: Procurar por empresas de video game
# Dado que o usuario procure por empresas de video game
# Quando ele pesquisar pela empresa "<Empresa>"
# Entao as informacoes do seui console "<Produto>" serao exibidas


# Exemplos:
# |Empresa    |Produto        |
# |Nintendo   |Switch         |
# |Sony       |Playstation 5  |
# |Microsoft  |Xbox Series    |
