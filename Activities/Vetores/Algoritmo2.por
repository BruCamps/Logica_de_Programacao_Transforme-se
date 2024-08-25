// Exercício: Ler um vetor de 5 elementos. Imprima o vetor em ordem crescente e em ordem decrescente.

programa {
  funcao inicio() {
    inteiro i, copia, vetor[5], troca = 0

    escreva("\n")
    para(i = 0; i <= 4; i++){
        escreva("Digite o ", i+1, "º número: ")
        leia(vetor[i])
    }

    faca{
        troca = 0
        para(i = 0; i < 4; i++){

          // Verifica se o número da posição atual (vetor[i]) é maior que o próximo número (vetor[i+1])
          se(vetor[i] > vetor[i+1]){ 

              // Copia recebe o número da posição atual
              copia = vetor[i] 

              // A posição atual recebe o número da próxima posição
              vetor[i] = vetor[i+1] 

              // A próxima posição recebe o número da posição atual
              vetor[i+1] = copia 

              // A variável troca muda para 1 caso a condição seja verdadeira para que a repetição aconteça
              troca = 1 
          }
        }
    } enquanto(troca == 1)

    escreva("\nOrdem crescente: ")
    para(i = 0; i <= 4; i++){
      escreva(vetor[i], " ")
    }

    escreva("\nOrdem decrescente: ")
    para(i = 4; i >= 0; i--){
      escreva(vetor[i], " ")
    }
    escreva("\n")

  }
}
