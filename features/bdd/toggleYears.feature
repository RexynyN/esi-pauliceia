# language: pt

Funcionalidade: Trocar o mapa renderizado
O usuário do Pauliceia logado 
Deseja visualizar mapas de anos passados
Para comparar endereços atraves dos anos

Cenario: Acionar um mapa antigo
Dado que o usuario logado queira visualizar um mapa antigo
Quando ele clicar no mapa do ano desejado
Entao o novo mapa deve ser renderizado
E o mapa antigo deve ser desselecionado