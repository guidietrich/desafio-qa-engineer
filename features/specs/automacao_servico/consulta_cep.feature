#language: pt

Funcionalidade: Consultar dados do endereço pelo CEP através da API
Como um usuário do sistema
Eu quero realizar as requisições na API com CEP
Para consultar o código do IBGE do endereço pelo CEP informado

Contexto:
Dado o endereço da API para a consulta do CEP

@cep_valido
Cenário: Consultar endereço com CEP válido
  Quando realizar a requisição para consultar o endereço com um CEP "válido" 
  Então a API irá retornar o código do "cep" e "localidade"
  E http code 200

@cep_inexistente
Cenário: Consultar endereço com CEP inexistente
  Quando realizar a requisição para consultar o endereço com um CEP "inexistente"
  Então a API irá retornar erro CEP "inexistente"
  E http code 200

@cep_invalido
Cenário: Consultar endereço com CEP inválido
  Quando realizar a requisição para consultar o endereço com um CEP "inválido"
  Então a página irá retornar bad request 400


