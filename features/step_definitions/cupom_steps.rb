Dado('que iniciei a compra do item:') do |table|
  product = table.rows_hash

  @home.open()
  @home.buy(product[:name])
end

Quando('aplico o seguinte cupom: {string}') do |coupon_code|
  @checkout.set_coupon(coupon_code)
end

Então('o valor final da compra deve ser atualizado para {string}') do |delivery|
  @checkout.assert_total_price(delivery)
end

Então('devo ver a seguinte notificação {string}') do |notice|
  @checkout.assert_notice(notice)
end

Então('o valor final deve permancecer o mesmo') do
  @checkout.assert_total_price(product[:total])
end