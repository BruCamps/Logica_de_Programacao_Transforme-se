/* Exercício: Neste exercício, o usuário é solicitado a inserir sua idade. 
O programa então verifica se a idade é menor que 18 anos ou maior ou igual a 65 anos. 
Se uma das condições for verdadeira, o programa imprime "Você tem direito a desconto no ingresso.". 
Caso contrário, imprime "Você não tem direito a desconto no ingresso." */

programa {
  funcao inicio() {
      inteiro idade
      
      escreva("\nCINEBRASIL - Garanta já o seu ingresso com 50% OFF\n\n")
      escreva("Antes de prosseguir, informe a sua idade (apenas números):\n-> ")
      leia(idade)

      limpa()

      se(idade < 18 ou idade >= 65){
        escreva("\nWow! Você tem direito ao desconto no ingresso. Agora, escolha um dos filmes em cartaz e aproveite!\n")
      } senao {
        escreva("\nPoxa! Parece que você não tem direito ao desconto no ingresso. :/\nMas você pode conferir outras super promoções em nosso site.\n")
      }
  }
}

