require_relative './pages/home.rb' # Mostrando o caminho do arquivo Page Objects
require_relative './pages/checkout.rb' # Mostrando o caminho do arquivo Page Objects
require_relative './pages/components.rb' # Mostrando o caminho do arquivo Page Objects

Before do

  @home = HomePage.new # Instanciando a página de Checkout do Page Objects ('./pages/home.rb')
  @checkout = CheckoutPage.new # Instanciando a página de Checkout do Page Objects ('./pages/checkout.rb')
  @popup = Popup.new # Instanciando a página de Checkout do Page Objects ('./pages/components.rb')

end