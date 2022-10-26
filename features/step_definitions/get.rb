
Dado("que o usuario verifique informacoes") do
   $uri_base = ("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT") //#uri_base é a variável da url para resgatar o get// 
   
end
//# buscando o serviço da API. Onde que vai imprimir no console o "response" que será retornado pelo get//
   

Quando("ele realizar a pesquisa") do
  $response = HTTParty.get($uri_base, :body => {"key":"REFEICAO|PIZZARIA","name":"PIZZARIA","label":"Refeição - Pizzaria"}, :verify => false) //#verify false foi necessário para ignorar o certificado SSL que estava impedindo de realizar o get.

end
//# ação de buscar o serviço da API. Envio  de requisição do Endpoint GET /que o usuário verifique informações e guardando o retorno na variável "response"

Entao('deve procurar a chave typeOfEstablishment') do
  puts "response body: #{$response.body}" //# validando a resposta da API
  puts "response message: #{$response.message}" //# validando conteudo das chaves da API
  puts "response headers: #{$response.headers}" //# validando pacotes de configuração do serviço da API

end
//#essas chaves foram geradas automáticas realizando o comando cucumber no terminal, posteriormente copiar e colar no documento get.br dentro da pasta step_definitions 
//#(lembre-se de apagar os pendings que vem no meio das chaves criadas automaticamente)
