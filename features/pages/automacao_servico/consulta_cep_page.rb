class ConsultaCEP
  include HTTParty
  
  base_uri "https://viacep.com.br/ws"

  def get_cep (cep, content_type)
    self.class.get("/#{cep}/#{content_type}")
  end
end