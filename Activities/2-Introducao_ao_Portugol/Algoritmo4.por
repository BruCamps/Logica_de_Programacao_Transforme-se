/* Exercício: Crie um algoritmo que receba o título do livro, o autor e o ano de publicação. 
Ao final, mostre as informações formatadas conforme o exemplo abaixo:
Livro: NOME
Autor: NOME
Ano de publicação: DATA */

programa {
  funcao inicio() {
    cadeia tituloLivro, autor
    inteiro anoPublicado
    escreva("\nAdicione um livro aos seus favoritos, completando os campos abaixo:\n\nTítulo do Livro:\n")
    leia(tituloLivro)
    escreva("Autor:\n")
    leia(autor)
    escreva("Ano de publicação:\n")
    leia(anoPublicado)
    limpa()
    escreva("\n[Livro adicionado aos favoritos!]\n\nInformações:\n\nLivro: ", tituloLivro, "\nAutor: ", autor, "\nAno de publicação: ", anoPublicado, "\n")
  }
}
