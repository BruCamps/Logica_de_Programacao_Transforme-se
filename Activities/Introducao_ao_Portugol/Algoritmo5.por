/* Exercício: Crie um algoritmo que receba um valor e ao somado com o segundo valor, retorne o total.
Ex.:
Valor informado: 10
Valor informado: 15
Total = 25 */

programa {
  funcao inicio() {
    real valor1, valor2, soma
    escreva("\nDigite um número:\n")
    leia(valor1)
    escreva("Digite outro número:\n")
    leia(valor2)
    soma = valor1 + valor2
    limpa()
    escreva("\n1º valor informado: ", valor1, "\n2º valor informado: ", valor2, "\nTotal = ", soma, "\n")
  }
}
