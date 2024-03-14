require 'rspec'

class CheckoutPage  
  include Capybara::DSL
  include RSpec::Matchers


  def assert_products_details(product)
    product_title = find('.item-details') # Localiza o título do produto
    expect(product_title.text).to eql product[:name] # Verifica se product_name é igual ao esperado

    sub_price = find('.sub-price') # Localiza o sub preço do produto
    expect(sub_price.text).to eql product[:price] # Verifica se product_price é igual ao esperado

    delivery = find('.delivery-price') # Localiza o preço de entrega do produto
    expect(delivery.text).to eql product[:delivery] # Verifica se delivery_price é igual ao esperado
  end

  def assert_total_price(total_price)
    price = find('.total-price').text # Localiza o preço total do produto
    expect(price).to eql total_price # Verifica se price_total é igual ao esperado
  end

  def find_zipcode(zipcode)
    find('input[name=cep]').set(zipcode)
    click_on 'Buscar CEP'
  end

  def fill_adress(adress)
    find('input[name=number]').set(adress[:number])
    find('input[name=complement]').set(adress[:details])
  end

  def choice_payment(payment_type)
    find('label div', text: payment_type.upcase).click
  end

  def submit
    click_on 'Confirmar pedido'
  end

  def set_coupon(coupon_code)
    find('input[placeholder="Código do cupom"]').set(coupon_code)
    click_on "Aplicar"
  end

  def assert_notice(text)
    notice = find('.notice').text
    expect(notice).to eql text
  end

end