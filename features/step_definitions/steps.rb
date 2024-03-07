Quando('acesso a página principal da Starbugs') do
    @home.open # Acessa a página principal do projeto
end
  
Então('eu devo visualizar uma lista de cafés disponíveis') do
    expect(@home.coffee_list.size).to be > 1 # Verifica a validação da lista
end

Dado('que estou na página principal da Starbugs') do
  @home.open # Acessa a página principal do projeto
end

Dado('que desejo comprar o seguinte produto:') do |table|
  @product_name = table.hashes[0][:product]
  @product_price = table.hashes[0][:price]
  @delivery_price = table.hashes[0][:delivery]
end

Quando('inicio a compra desse item') do
  @home.buy(@product_name)
end

Então('devo ver a página de Checkout com os detalhes do produto') do
  @checkout.assert_products_details(@product)
end

Então('o valor total da compra deve ser de {string}') do |price_total|
  @checkout.assert_total_price(price_total)
end

Então('devo ver um popup informando que o produto está indisponível') do
  @popup.have_text('Produto indisponível')
end



# Então, do, end são as steps em ruby
# Puts é como se fosse o console.log ou print