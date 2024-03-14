require_relative './pages/home.rb' # Mostrando o caminho do arquivo Page Objects
require_relative './pages/checkout.rb' # Mostrando o caminho do arquivo Page Objects
require_relative './pages/components.rb' # Mostrando o caminho do arquivo Page Objects
require_relative './pages/order.rb'

Before do

  @home = HomePage.new # Instanciando a página de Checkout do Page Objects ('./pages/home.rb')
  @checkout = CheckoutPage.new # Instanciando a página de Checkout do Page Objects ('./pages/checkout.rb')
  @popup = Popup.new # Instanciando a página de Checkout do Page Objects ('./pages/components.rb')
  @order = OrderPage.new

end

After do |scenario|

  if(scenario.failed?) then
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    attach(screenshot, 'image/png', 'Screenshot')
  end
  # Caso o scenario falhar o cucumber irá tirar um print e armazenar em: logs/screenshots/temp.png
end