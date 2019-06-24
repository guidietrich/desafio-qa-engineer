Dado("que estou na página de registro de login") do
  @login_page = AutomacaoE2EPage.new
  @login_page.load
end

Quando("informar os dados e salvar") do
  @login_page.login_adm.criar_login
end

Então("recebo a mensagem inicial") do
  expect(@login_page).to have_text("Welcome to Address Book")
end

Dado("que estou logado no sistema") do
	steps %Q{
    Dado que estou na página de registro de login
    Quando informar os dados e salvar
    Então recebo a mensagem inicial
	}
end
