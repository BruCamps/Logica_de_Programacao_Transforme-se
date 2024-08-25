// Exercício: Faça um algoritmo para ler a idade de 4 pessoas e imprimir a maior idade.

programa {
  funcao inicio() {
    inteiro i, idade, maior
    escreva("\nInforme a idade de 4 pessoas e descubra qual é a mais velha\n\n")
    escreva("Pessoa 1 - Digite sua idade: ")
    leia(idade)
    maior = idade
    
    para(i = 1; i < 4; i++){
      escreva("Pessoa ", i+1, " - Digite sua idade: ")
      leia(idade)
      
      se(idade>maior){
        maior = idade
      }
    } 

      limpa()
      
      escreva("\nA idade maior é: ", maior, "\n")
  }
}
