Quando('acesso a página principal da Starbugs') do
    visit  'https://starbugs.vercel.app/'
end
  
Então('eu devo visualizar uma lista de cafés disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
  visit  'https://starbugs.vercel.app/'
end

Dado('que desejo comprar o café {string}') do |product_name|
  @product_name = product_name
end

Dado('que esse produto custa {string}') do |product_price|
  @product_price = product_price
end

Dado('que o custo de entrega é de {string}') do |delivery_price|
  @delivery_price = delivery_price
end

Quando('inicio a compra desse item') do
  product = find('.coffee-item', text: @product_name)
  product.find('.buy-coffee').click
end

Então('devo ver a página de Checkout com os detalhes do produto') do
  product_title = find('.item-details')
  expect(product_title.text).to eql @product_name

  sub_price = find('.sub-price')
  expect(sub_price.text).to eql @product_price

  delivery = find('.delivery-price')
  expect(delivery.text).to eql @delivery_price
end

Então('o valor total da compra deve ser de {string}') do |price_total|
  total_price = find('.total-price')
  expect(total_price.text).to eql price_total
end

Então('devo ver um popup informando que o produto está indisponível') do
  popup = find('.swal2-html-container')
  expect(popup.text).to eql 'Produto indisponível'
end