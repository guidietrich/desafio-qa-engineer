require_relative "acessar_login_section"
require_relative "cadastrar_perfil_section"

class AutomacaoE2EPage < SitePrism::Page
  
  set_url URL["signup"]

  section :login_adm, LoginAdm, ".container"
  section :header, CadastroPerfil, "#navbar" 
  section :content, CadastroPerfil, ".container" 

end