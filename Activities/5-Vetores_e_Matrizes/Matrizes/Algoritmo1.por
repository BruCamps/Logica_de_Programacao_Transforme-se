// Exercício: Faça um programa que faça uma matriz de números matriz 5x2.

programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro matriz [5][2], linha, coluna

    escreva("\n-- Matriz 5 x 2 --\n\n")

    para(linha = 0; linha < 5; linha++){
      para(coluna = 0; coluna < 2; coluna++) {

        matriz[linha][coluna] = u.sorteia(1, 9)
        escreva("|\t\t", matriz[linha][coluna], "\t\t")
      
      }
      escreva("|\n")
    }

  }
}
