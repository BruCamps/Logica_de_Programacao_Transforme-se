/* Exercício: Faça um programa que leia o nome de uma pessoa e mostre uma mensagem de boas-vindas para ela:
Ex:
Qual o seu nome? Andressa Maria
Prazer em conhece-lo (a), Andressa Maria */

programa {
  funcao inicio() {
      cadeia nome
      escreva("\nPara concluir o seu cadastro na instituição, gostaríamos de saber como você prefere ser chamado(a):\n")
      leia(nome)
      limpa()
      escreva("\nSeja muito bem-vindo(a), ", nome, "!\nEstamos felizes em ter você aqui.\nBons estudos! :D\n")
  }
}
