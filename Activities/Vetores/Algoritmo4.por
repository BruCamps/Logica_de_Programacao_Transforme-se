// Exercício: Faça um programa que receba do usuário dois vetores, A e B, com 5 números inteiros cada. 
// Crie um novo vetor denominado C calculando C = A - B. Mostre na tela os dados do vetor C.

programa {
  funcao inicio() {
    inteiro i, A[5], B[5], C[5]
     
    escreva("\nVamos construir o vetor A:\n\n")
    para(i = 0; i <= 4; i++){
      escreva("Digite o ", i+1, "º número: ")
      leia(A[i])
    }

    limpa()

    escreva("\nVamos construir o vetor B:\n\n")
    para(i = 0; i <= 4; i++){
      escreva("Digite o ", i+1, "º número: ")
      leia(B[i])
    }

    limpa()

    escreva("\nVetor A[5] = { ")
    para(i = 0; i <= 4; i++){
      escreva(A[i], " ")
    }
    escreva("}\n")

    escreva("Vetor B[5] = { ")
    para(i = 0; i <= 4; i++){
      escreva(B[i], " ")
    }
    escreva("}")

    escreva("\n\nResultado das subtrações entre o Vetor A e Vetor B no Vetor C\n\n")
    escreva("Vetor C[5] = { ")
    para(i = 0; i <= 4; i++){
      C[i] = A[i] - B[i]
      escreva(C[i], " ")
    }
    escreva("}\n")
  }
}
