/* Exercício:
- Escreva um algoritmo que leia 2 notas e o nome de um aluno na função início 
- Chame uma nova função que calcula a média aritmética do aluno, retornando o resultado para ser impresso na 
tela. */

programa {
  inclua biblioteca Matematica --> mat
  
  funcao inicio(){
    cadeia nomeAluno
    real nota1, nota2
    escreva("\nOlá, pequeno gafanhoto!\nSeja muito bem-vindo(a) a aula de Portugol!\n")
    escreva("Precisamos que você preencha seu nome para prosseguir.\n\nInforme seu nome: ")
    leia(nomeAluno)

    limpa()

    escreva("\nOlá, ", nomeAluno, "! Seja muito bem-vindo(a)!\nAgora, vamos calcular a sua média durante essa unidade!\n")
    escreva("\nDigite sua 1ª nota: ")
    leia(nota1)
    escreva("Digite sua 2ª nota: ")
    leia(nota2)

    escreva("\nSua média final é: ", mediaAritmetica(nota1, nota2), "\n")
  }

  funcao real mediaAritmetica(real n1, real n2){
    real media
    media = (n1 + n2) / 2
    retorne mat.arredondar(media, 2)
  }
}
