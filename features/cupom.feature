#language: pt


Funcionalidade: Uso de cupons no Checkout

    Como um usuário do site Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout, Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.


    Cenario: Aplicar Desconto de 20%

      O usuário deve ser capaz de aplicar um cupom de 20% de desconto válido no checkout.
      O desconto deve ser aplicado apenas ao valor do produto e o valor final deve ser recalculado corretamente.

    Dado que estou na página de checkout
        E o item que está no meu carrinho é o Café com leite no valor de R$ 19,99
        E que a taxa de entrega é de R$ 10,00
        E o valor total é de R$ 29,99
        E tenho um cupom com 20% de desconto
    Quando aplico esse cupom de desconto
    Então o desconto de 20% deve ser aplicado apenas no valor do Café com leite
        E o valor final da compra deve ser atualizado para R$ 25,99