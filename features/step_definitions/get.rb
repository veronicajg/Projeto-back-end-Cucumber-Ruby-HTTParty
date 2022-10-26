
Dado("que o usuario verifique informacoes") do
   $uri_base = ("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")
   
end

Quando("ele realizar a pesquisa") do
  $response = HTTParty.get($uri_base, :body => {"key":"REFEICAO|PIZZARIA","name":"PIZZARIA","label":"Refeição - Pizzaria"}, :verify => false)

end

Entao('deve procurar a chave typeOfEstablishment') do
  puts "response body: #{$response.body}"
  puts "response message: #{$response.message}"
  puts "response headers: #{$response.headers}"

end