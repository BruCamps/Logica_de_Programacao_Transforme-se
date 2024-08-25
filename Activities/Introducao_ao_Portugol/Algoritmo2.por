// Exercício: Construa um algoritmo que receba seu nome, sua idade e ao final mostre a conforme a seguinte frase de exemplo: 
// Rafael possui 37 anos de idade 

programa {
  funcao inicio() {
    cadeia nome
    inteiro idade
    escreva("\nEscreva seu nome:\n")
    leia(nome)
    escreva("Informe sua idade (apenas números):\n")
    leia(idade)
    limpa()
    escreva("\n", nome, " possui ", idade, " anos de idade\n")
  }
}
