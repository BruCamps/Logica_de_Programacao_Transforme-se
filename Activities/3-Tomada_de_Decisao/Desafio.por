/* Desafio: Construa um algoritmo em Portugol para receber do teclado a sigla do estado de uma pessoa e imprimir por extenso as frases
como nos exemplos abaixo:
* RJ - Você é Carioca
* SP - Você é Paulista
* PE - Você é Pernambucano
* MG - Você é Mineiro */

programa {
  funcao inicio() {
    cadeia estado
    escreva("\nInforme a sigla do estado em que você nasceu, morou ou mora atualmente (em letras maiúsculas):\n-> ")
    leia(estado)
    limpa()
    
    escreva("\nWooow! Que bacana!\n")
    escolha(estado){
        caso "RO":
          escreva("-> Você é rondoniano\n")
          pare
        caso "AC":
          escreva("-> Você é acreano\n")
          pare
        caso "AM":
          escreva("-> Você é amazonense\n")
          pare
        caso "RR":
          escreva("-> Você é roraimense\n")
          pare
        caso "PA":
          escreva("-> Você é paraense\n")
          pare
        caso "AP":
          escreva("-> Você é amapaense\n")
          pare
        caso "TO":
          escreva("-> Você é tocantinense\n")
          pare
        caso "BA":
          escreva("-> Você é baiano\n\n")
          pare
        caso "SE":
          escreva("-> Você é sergipense\n")
          pare
        caso "AL":
          escreva("-> Você é alagoano\n")
          pare
        caso "PE":
          escreva("-> Você é pernambucano\n")
          pare
        caso "PB":
          escreva("-> Você é paraibano\n")
          pare
        caso "RN":
          escreva("-> Você é potiguar\n")
          pare
        caso "CE":
          escreva("-> Você é cearense\n")
          pare
        caso "PI":
          escreva("-> Você é piauiense\n")
          pare
        caso "MA":
          escreva("-> Você é maranhense\n")
          pare
        caso "MS":
          escreva("-> Você é mato-grossense-do-sul\n")
          pare
        caso "MT":
          escreva("-> Você é mato-grossense\n")
          pare
        caso "GO":
          escreva("-> Você é goiano\n")
          pare
        caso "DF":
          escreva("-> Você é brasiliense")
          pare
        caso "SP":
          escreva("-> Você é paulista\n")
          pare
        caso "RJ":
          escreva("-> Você é carioca\n")
          pare
        caso "MG":
          escreva("-> Você é mineiro\n")
          pare
        caso "ES":
          escreva("-> Você é espírito-santense\n")
          pare
        caso "RS":
          escreva("-> Você é gaúcho\n")
          pare
        caso "SC":
          escreva("-> Você é catarinense\n")
          pare
        caso "PR":
          escreva("-> Você é paranaense\n")
          pare
        caso contrario:
          escreva("\n-> Dado inválido!\n")
          
    }
  }
}
