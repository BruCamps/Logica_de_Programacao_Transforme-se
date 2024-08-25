// Exercício: Faça um programa que possua um vetor denominado A que armazene 6 números inteiros.
// O programa deve executar os seguintes passos:
// (a) Atribua os seguintes valores a esse vetor: 1, 0, 5, -2, -5, 7
// (b) Armazene em uma variável inteira (simples) a soma entre os valores das posições A[0], A[1] e A[5] do vetor e mostre na tela esta soma.
// (c) Modifique o vetor na posição 4, atribuindo a esta posição o valor 100.
// (d) Mostre na tela cada valor do vetor A um em cada linha.

programa {
  funcao inicio() {
    inteiro i, soma, A[6] = {1, 0, 5, -2, -5, 7}
    soma = A[0] + A[1] + A[5]

    escreva("\nVetor A[6] = {1, 0, 5, -2, -5, 7}\n")
    escreva("\nSoma entre o 1°, 2° e 6° número do vetor A:\n", A[0], " + ", A[1], " + ", A[5], " = ", soma, "\n")

    A[4] = 100

    escreva("\nSubstituição do número -5 por 100:\nVetor A[6] = { ")
    para(i = 0; i <= 5; i++){
      escreva(A[i], " ")
    }
    escreva("}\n")
  }
}
