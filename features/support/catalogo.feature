#language: pt


# Funcionalidade a ser testada

Funcionalidade: Catálogo de cafés
    Como um usuário do site, eu quero ver o catálogo de cafés na pagina principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

# Cenário de teste definido sempre após a funcionalidade
Cenário: Acessar o catálogo de cafés na página principal

    Quando acesso a página principal da Starbugs
    Então eu devo visualizar uma lista de cafés disponíveis

# @temp serve para utilizarmos a flag -t @temp na execução dos testes e só executar o cenário aonde existe o @temp    
@temp
Cenário: Iniciar a compra de um café

    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name     | Expresso Gelado |    
        | price       | R$ 9,99         |
        | delivery    | R$ 10,00        |
        # Muito importante a definição de qual tipo de dado está sendo inserido no teste, nesse caso (String)
    Quando inicio a compra desse item
    Então devo ver a página de Checkout com os detalhes do produto
        E o valor total da compra deve ser de "R$ 19,99"
# Dado, Quando e E, são três palavras reservardas do Gherkin para a escrita de casos de teste
# Sempre escrever os casos de teste pensando em usabilidade


Cenário: Café indisponível

    Dado que estou na página principal da Starbugs
        E que desejo comprar o café "Expresso Cremoso"
    Quando inicio a compra desse item
    Então devo ver um popup informando que o produto está indisponível