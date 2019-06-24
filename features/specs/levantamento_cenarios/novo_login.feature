#language: pt

@novo_login
Funcionalidade: Realizar login 
  Eu como usuário do sistema
  Desejo acessar a minha conta na Lendico
  Para ter acesso ao meu perfil

Contexto:
  Dado que estou na página de acessar o login

@login_valido @funcional
Cenário: Validar login com usuário e senha válidos
  Quando informar os dados válidos
  E clicar no botão entrar
  Então acesso a conta logada

@login_invalido @funcional
Cenário: Validar login com usuário e senha inválidos
  Quando informar os dados inválidos
  E clicar no botão entrar
  Então recebo mensagem de erro

@login_em_branco @funcional
Cenário: Validar login com usuário e senha em branco
  Quando não informar os dados
  E clicar no botão entrar
  Então recebo mensagem de erro

@login_email_invalido @funcional
Cenário: Validar login com email inválido e senha válida
  Quando informar o email inválido e senha válida
  E clicar no botão entrar
  Então recebo mensagem de erro

@login_cpf_invalido @funcional
Cenário: Validar login com CPF inválido e senha válida
  Quando informar o CPF inválido e senha válida
  E clicar no botão entrar
  Então recebo mensagem de erro

@login_esqueceu_senha @funcional
Cenário: Validar funcionalidade Esqueceu a Senha?
  Quando clicar no link Esqueceu a Senha?
  Então sou direcionado para a tela de recuperação de senha

@login_criar_conta @funcional
Cenário: Validar a criação de conta
  Quando clicar no menu Criar Conta
  Então sou direcionado para a tela de registro

@login_mostrar @funcional
Cenário: Validar a funcionalidade Mostrar
  Quando preencher a senha
  E clicar na funcionalidade Mostrar
  Então verifico o texto decodificado

@login_links @regressao @funcional
Cenário: Validar os links do menu
  Quando clicar nos links do menu 
  Então sou direcionado para as respectivas páginas

@login_cross_browser @nao_funcional
Cenário: Validar a compatibilidade de acesso em diferentes browsers e dispositivos móveis
  Quando acessado em diferentes browsers e dispositivos móveis
  Então verifico a disponibilidade de login

@login_performance @nao_funcional
Cenário: Validar a perfomance ao logar
  Quando informar os dados válidos
  E clicar no botão entrar
  Então verifico o tempo levado para logar

@login_interface @nao_funcional
Cenário: Validar a interface do usuário
  Então verifico o layout de acordo com o padrão adotado
  E a navegabilidade entre as telas