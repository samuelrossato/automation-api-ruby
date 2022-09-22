module ViaCep
    include HTTParty
    base_uri "https://viacep.com.br/ws"

    def consulta_cep(cep)
        HTTParty.get(
            base_uri + "/#{cep}/json"
        )
    end
end