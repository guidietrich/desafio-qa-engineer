#language: pt

@login_adm
Funcionalidade: Realizar login de administrador
  Eu como usuário do sistema
  Desejo criar meu login de administrador
  Para acessar a página logada

Cenário: Cadastrar login de administrador
  Dado que estou na página de registro de login
  Quando informar os dados e salvar
  Então recebo a mensagem inicial