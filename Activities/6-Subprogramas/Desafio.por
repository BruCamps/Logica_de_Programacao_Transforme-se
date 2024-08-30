/* Desafio: Escreva um algoritmo que calcule o fatorial de um número inteiro através da recursividade (a função chama a si mesma em alguma parte do código) */

programa {
  funcao inicio() {
    real num
    escreva("Digite um número: ")
    leia(num)
    escreva("\nO resultado de ", num, "! é ", fatorial(num))
  }
  funcao real fatorial(real num){
      escreva(num)
      se(num == 1){
        retorne 1
      } senao {
        retorne (num * fatorial(num-1)) 
      }
  }
}
