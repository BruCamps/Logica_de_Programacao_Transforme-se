// Exercício: Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles.

programa {
  funcao inicio() {
    inteiro i, num, maior, menor
    
    escreva("\nDigite o 1º número -> ")
    leia(num)

    maior = num
    menor = num

    para(i = 1; i < 50; i++){
      escreva("Digite o ", i+1, "º número -> ")
      leia(num)
      
      se(num>maior){
        maior = num
      } 
      se(num<menor){
        menor = num
      }
    } 

      limpa()

      escreva("\nO maior número é: ", maior, "\nO menor número é: ", menor, "\n")
  }
}
