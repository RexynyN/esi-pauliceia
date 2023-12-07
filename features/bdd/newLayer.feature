# language: pt

Funcionalidade: Verificar se é possível criar uma camada incompleta
O usuario do Pauliceia
Deseja testar criar uma camada incompleta
Para o usuário irá cadastrar uma camada incompleta

Contexto:
    Dado que o usuario tenha feito login

Cenario: Verificar se é possível criar uma camada incompleta
Dado que o usuario queira criar uma camada incompleta
Quando ele clicar em criar uma camada
Entao deve ser renderizado uma mensagem de erro