// Exercício: Faça um programa que lê 10 números inteiros do teclado e imprima o vetor com os valores armazenados.

programa { 

  funcao inicio() { 

      inteiro num[10], i

      escreva("\nVamos criar um vetor de 10 números inteiros!\n\n")

      para(i = 0; i <= 9; i++){ 
        escreva("Digite o ", i+1, "º número: ")
        leia(num[i]) 
      } 

      limpa() 

      escreva("\nVetor[10] = { ")
      para(i = 0; i <= 9; i++){
        escreva(num[i], " ")
      }
      escreva("}\n")
  }
} 
