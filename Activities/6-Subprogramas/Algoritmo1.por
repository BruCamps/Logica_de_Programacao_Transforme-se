/* Exercício: 
- Escreva um algoritmo que leia um número inteiro qualquer na função início.
- Calcule em uma nova função o quadrado deste número.
- Imprima o resultado. */

programa {
  funcao inicio(){
    inteiro num
    escreva("\nDigite um número inteiro: ")
    leia(num)
    escreva("O quadrado do número ", num, " é ", quadrado(num), "\n")
  }

  funcao inteiro quadrado(inteiro n){
    retorne n * n
  }
}
