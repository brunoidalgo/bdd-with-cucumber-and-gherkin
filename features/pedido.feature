#language: pt

Funcionalidade: Pedidos

  Como um usuário do site Starbugs, eu quero selecionar e comprar cafés
  Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega


  Cenario: Compra bem sucedida

     Dado que estou na página principal da Starbugs
          E que iniciei a compra do item "Expresso Tradicional"
     Quando faço a bsca do seguinte CEP: "14020055"
          E informo os demais dados do endereço:
            | number        | 1972     |    
            | details   | Apto 11  |
          E escolho a forma de pagamento: "Cartão de Crédito"
          E por fim finalizo a compra
     Então sou redirecionado para a página de confirmação de Pedidos
          E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"
            