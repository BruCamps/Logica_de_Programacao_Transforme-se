// Desafio: Crie um algoritmo que reconheça qual o antecessor e sucessor do número informado. 

programa {
  funcao inicio() {
      inteiro num, antecessor, sucessor
      escreva("\nDigite um número:\n-> ")
      leia(num)
      antecessor = num - 1
      sucessor = num + 1
      limpa()
      escreva("\nNúmero escolhido: ", num, "\n\n", antecessor, " <- ", num, " -> ", sucessor, "\n\nO antecessor é ", antecessor, " e o sucessor é ", sucessor, "\n")
  }
}
