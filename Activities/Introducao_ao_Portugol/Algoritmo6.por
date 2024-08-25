/* Exercício: Crie um algoritmo que receba as 4 notas de um aluno e retorne a média. 
Ex.:
Nota 1: 10
Nota 2: 8
Nota 3: 9
Nota 4: 9
Média = 9 */

programa {
  funcao inicio() {
      real n1, n2, n3, n4, mediaFinal
      escreva("\nOlá, pequeno gafanhoto!\nQue tal verificarmos seu desempenho nos estudos através do cálculo da sua média?\nPara isso, você deverá informar 4 notas. Vamos lá?\n\nIMPORTANTE: No lugar da vírgula use ponto para separar as casas decimais! Ex.: 6.5\n\n")
      escreva("Informe a 1ª nota:\n-> ")
      leia(n1)
      escreva("Informe a 2ª nota:\n-> ")
      leia(n2)
      escreva("Informe a 3ª nota:\n-> ")
      leia(n3)
      escreva("Informe a 4ª nota:\n-> ")
      leia(n4)
      mediaFinal = (n1 + n2 + n3 + n4) / 4
      limpa()
      escreva("\nNota 1 -> ", n1, "\nNota 2 -> ", n2, "\nNota 3 -> ", n3, "\nNota 4 -> ", n4, "\n\nMédia Final -> ", mediaFinal, "\n")
      se(mediaFinal < 6.5) {
        escreva("[Poxa. Uma pena que não foi dessa vez, mas se dedicar com certeza se sairá bem na próxima!]\n")
      } 
      se(mediaFinal >= 6.5 e mediaFinal < 8) {
        escreva("[Que bacana! Continue assim e seja ainda melhor no futuro!]\n")
      }
      se(mediaFinal >= 8) {
        escreva("[Wooooow, que D+! Assim você vai longe!]\n")
      }
  }
}
