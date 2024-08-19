describe "API VIA_CEP" do
    context "/ GET", :consultar_cep do
        before(:all) do
            @ceps = CEPS['ceps']
            nome = "Tests"
        end

        it "Consultar cep aleatório" do
            response = ViaCep.consulta_cep(@ceps.sample)
            expect(response.code).to eq 200
            puts response.code
            puts "teste de status code"
            expect(response.body).to match_json_schema("response_body/response_cep")
        end

        it "Consultar lista de ceps que estão disponíveis" do
            @ceps.each do |cep|
                response = ViaCep.consulta_cep(cep)
                expect(response.code).to eq 200
                expect(response.body).to match_json_schema("response_body/response_cep")
            end
        end

        it "Tentar consultar cep inválido" do
            estado = ""
            teste = novoteste
            response = ViaCep.consulta_cep("0000")
            expect(response.code).to eq 400
        end
    end
end