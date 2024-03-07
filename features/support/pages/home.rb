class HomePage # Classe que defini nesse caso a página inicial do projeto a ser testado
  include Capybara::DSL 
  # Com essa linha temos uma correta demonstração de para onde o arquivo de execução deve olhar

  def open # "Função" definida utilizando o comando def
    visit 'https://starbugs.vercel.app/' # Tem a função de visistar a página inicial do projeto
  end

  def coffee_list
    return all('.coffee-item')
  end

  def buy(coffe_name)
    product = find('.coffee-item', text: coffe_name) 
    # encontra e armazena na variável product o produto inserido no caso de teste como String em Gherkin.
    product.find('.buy-coffee').click # Localiza o elemento e clica
  end

end