/* Exercício: Desenvolva um sistema onde possamos informar os descontos para os clientes de acordo com as condições abaixo:
1 - Até 100, não tem desconto
2 - Menor que 250, desconto de 5%
3 - Maior ou igual a 500, desconto de 10% */

programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real valor, desconto, valorFinal
    
    escreva("\nVamos jogar?\n\nVocê chuta um valor qualquer em real, e se estiver de acordo com a regra\ndo jogo que é secretapoderá ganhar um cupom de desconto de 5% a 10% em\nnossos produtos na faixa do valor informado.\n\nIMPORTANTE: No lugar da vírgula use o ponto para separar casas decimais! Ex.: 250.50\n\n-> R$ ")
    leia(valor)

    limpa()

    se(valor > 100 e valor < 250){

      desconto = mat.arredondar((valor * 0.05), 2)
      valorFinal = mat.arredondar((valor * 0.95), 2)

      escreva("\n[Wooow! Você ganhou um cupom de 5%!]\n")
      escreva("\nValor informado -> R$ ", valor, "\nValor do desconto -> R$ ", desconto, "\nValor final -> R$ ", valorFinal, "\n")
    }
    senao {
      se(valor >= 500){

        desconto = mat.arredondar((valor * 0.1), 2)
        valorFinal = mat.arredondar((valor * 0.90), 2)

        escreva("\n[Wooow! Você ganhou um cupom de 10%!]\n")
        escreva("\nValor informado -> R$ ", valor, "\nValor do desconto -> R$ ", desconto, "\nValor final -> R$ ", valorFinal, "\n")
      } 
      senao {
        escreva("\nValor -> R$ ", valor, "\n\nEita, não foi dessa vez...\n\n[Infelizmente não há nenhum cupom de desconto\nou prêmio disponível para este valor.]\n")
      }
    }
  }
}
