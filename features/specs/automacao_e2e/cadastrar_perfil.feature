#language: pt

@cadastrar_perfil
Funcionalidade: Cadastrar perfil de usuário
  Eu como usuário do sistema
  Desejo criar um perfil de usuário
  Para validar o cadastro realizado

Cenário: Cadastrar perfil com sucesso
  Dado que estou logado no sistema
  Quando acessar a página para criar um perfil 
  E preencher os dados e salvar
  Então recebo a mensagem de usuário cadastrado