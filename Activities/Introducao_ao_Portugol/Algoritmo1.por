// Exercício: Construa um algoritmo que receba em uma variável seu primeiro nome e em outra variável seu ultimo nome. 
// No final o algoritmo deve mostrar: Aluno + Seu Primeiro Nome + Seu Ultimo Nome, conforme o exemplo:
// Aluno Gabriel Santana

programa {
  funcao inicio() {
    cadeia nome, sobrenome
    escreva("\nOlá, estudante!\nPrecisamos que informe seu nome e sobrenome (seu último nome) para prosseguir: \n\nPrimeiro nome: ")
    leia(nome)
    escreva("Sobrenome: ")
    leia(sobrenome)
    limpa()
    escreva("\nEstudante ", nome, " ", sobrenome, ", lhe desejamos uma ótima jornada de aprendizado!\n")
  }
}

