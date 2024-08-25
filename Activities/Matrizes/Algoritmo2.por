// Exercício: Faça a soma de uma matriz 3x3.

programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro matriz [3][3], linha, coluna, soma = 0

    escreva("\n----- Matriz 3 x 3 ------\n\n")
    para(linha = 0; linha < 3; linha++){
      para(coluna = 0; coluna < 3; coluna++) {
        matriz[linha][coluna] = u.sorteia(1, 9)
        soma = soma + matriz[linha][coluna]
        
        escreva("|\t\t", matriz[linha][coluna], "\t\t")
      }
      escreva("|\n")
    }

    escreva("\nSoma da Matriz: ", soma, "\n")
  }
}
