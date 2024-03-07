require 'rspec'

class Popup
  include Capybara::DSL
  include RSpec::Matchers

  def have_text(text)
    popup = find('.swal2-html-container') # Localiza o popup de produto indisponível na tela
    expect(popup.text).to eql text # Verifica se o texto exibido no popup é = 'Produto indisponível'
  end

end