#language: pt


Funcionalidade: Uso de cupons no Checkout

    Como um usuário do site Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout, Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

@temp
    Cenario: Aplicar Desconto de 20%

    Dado que iniciei a compra do item:
        | name     | Café com Leite |
        | price    | R$ 19,99       |
        | delivery | R$ 10,00       |
        | total    | R$ 29,99       |
    Quando aplico o seguinte cupom: "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"

    Cenario: Cupom Expirado

    Ao tentar usar um cupom expirado, o usuário deve receber uma notificação informando que o cupom está expirado. Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado.

    Dado que iniciei a compra do item:
        | name     | Café com Leite |
        | price    | R$ 19,99       |
        | delivery | R$ 10,00       |
        | total    | R$ 29,99       |
    Quando aplico o seguinte cupom: "PROMO20"
    Então devo ver a seguinte notificação "Cupom expirado!"
        E o valor final deve permancecer o mesmo



    Cenario: Cupom Inválido

    Ao tentar usar um cupom inválido, o usuário deve receber uma notificação informando que o cupom é inválido. Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado.

    Dado que iniciei a compra do item:
        | name     | Café com Leite |
        | price    | R$ 19,99       |
        | delivery | R$ 10,00       |
        | total    | R$ 29,99       |
    Quando aplico o seguinte cupom: "PROMO100"
    Então devo ver a seguinte notificação "Cupom inválido!"
        E o valor final deve permancecer o mesmo

# BDD - Desenvolver guiado a comportamento