Quando("acessar a página para criar um perfil") do
  @login_page.header.acessar_cadastro
  @login_page.header.criar_perfil
end

Quando("preencher os dados e salvar") do
  @login_page.content.preencher_campos
  @login_page.content.salvar
end

Então("recebo a mensagem de usuário cadastrado") do
  expect(@login_page).to have_text('Address was successfully created.')
end
