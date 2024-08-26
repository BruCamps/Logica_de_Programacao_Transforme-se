// Exercício: Faça uma matriz de ordem 2 que não aceite números negativos.

programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro matriz [2][2], linha, coluna, i = 0

    escreva("\nVamos construir uma matriz!\n\nATENÇÃO: Sem números negativos!\n\n")

    para(linha = 0; linha < 2; linha++){
      para(coluna = 0; coluna < 2; coluna++) {
        escreva("Digite o ", i+1, "º número: ")
        leia(matriz[linha][coluna])

        enquanto(matriz[linha][coluna] < 0) {
          escreva("\n[Número inválido, não é permitido números negativos! Tente novamente.]")
          u.aguarde(3000)

          limpa()
          
          escreva("\nVamos construir uma matriz!\n\nATENÇÃO: Sem números negativos!\n\n")
          escreva("Digite o ", i+1, "º número: ")
          leia(matriz[linha][coluna])
        }
        i++
      }
    }

    limpa()

    escreva("\n----- Matriz 2 x 2 ------\n\n")

    para(linha = 0; linha < 2; linha++){
      para(coluna = 0; coluna < 2; coluna++) {

        se(matriz[linha][coluna] < 10){ // Condicional para tabulação para números menores que 10 (Opcional)
          escreva("|\t\t\t ", matriz[linha][coluna], "\t\t")
        } 
        senao{ // Tabulação para outros números (Opcional)
          escreva("|\t\t\t", matriz[linha][coluna], "\t\t")
        }
      }
      escreva("|\n") // (Opcional)
    }
  }
}
