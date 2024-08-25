/* Exercício: Faça um programa que deverá permitir que o usuário entre com os valores dos elementos de uma matriz quadrada 
de ordem 4 e possibilite o usuário realizar as seguintes funcionalidades: 
1 - Imprimir os elementos da matriz da terceira linha.
2 - Somar todos os elementos da terceira linha.
3 - Mostre o resultado na tela. */

programa {
  funcao inicio() {
    inteiro matriz [4][4], linha3[4]
    inteiro linha, coluna, i = 0, soma = 0

    escreva("\nVamos construir uma matriz!\n\n")

    para(linha = 0; linha < 4; linha++){
      para(coluna = 0; coluna < 4; coluna++) {
        escreva("Digite o ", i+1, "º número: ")
        leia(matriz[linha][coluna])
        i++
      }
    }

    limpa()

    escreva("\n----- Matriz 4 x 4 ------\n\n")
    para(linha = 0; linha < 4; linha++){
      para(coluna = 0; coluna < 4; coluna++) {

          linha3 = matriz[2]
          soma = matriz[2][0] + matriz[2][1] + matriz[2][2] + matriz[2][3]

        escreva("|\t\t", matriz[linha][coluna], "\t\t")
      }
      escreva("|\n")
    }

    escreva("\nLinha 3\n\nNúmeros: ", linha3)
    escreva("\nSoma: ", soma, "\n")
  }
}
