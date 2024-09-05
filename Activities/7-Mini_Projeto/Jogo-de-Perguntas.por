programa { // Início do programa

  // Inclusão de bibliotecas e atribuição de apelidos a elas
  
  inclua biblioteca Util --> u      // Varia aleatoriamente as mensagens (exibidas a cada resposta certa ou errada) e executa intervalos em milissegundos
  inclua biblioteca Texto --> tx   // Coloca a resposta em caixa alta (maiúscula) e conta a quantidade de caracteres (letras) da resposta

  // Variáveis das Perguntas
  cadeia perg1 = "1- Como criar um vetor de (Notas) do tipo real com 5 elementos em Portugol?\nA. vetor inteiro notas[5] \t B. real notas[5] \t C. vetor notas:inteiro[5] \t D. vetor notas:real \n", 
  perg2 = "2- O que o seguinte código em Portugol faz?\nAlgoritmo ''exemplo'' \ninicio\n  inteiro x\n  x = 5\n  escreva(x * 2)\nfim?\nA. Imprima 5 \t B. Imprima 10 \t C. Imprima 25 \t D. Imprima 55 \n", 
  perg3 = "3- Qual é a finalidade da palavra-chave ''leia'' em Portugol?\nA. Exibir um valor na tela \t B.  Declarar uma variável \t C. Ler um valor fornecido pelo usuário \t D.  Executar um comando de repetição \n", 
  perg4 = "4- O que significa o comando ''escreva'' em Portugol??\nA. Lê um valor da entrada padrão \t B. Define uma variável \t C.  Exibe um valor ou mensagem na tela  \t D. Cria um loop de repetição \n", 
  perg5 = "5- Qual é a sintaxe correta para declarar uma variável inteira em Portugol?\nA. inteiro var \t B. inteiro : var \t C. var : inteiro \t D. var = inteiro \n", 
  perg6 = "6- Qual laço de repetição é mais apropriado para garantir que um bloco de código seja executado pelo menos 1 vez, independentemente da condição?\nA.  `para \t B. `enquanto \t C. `faca ... enquanto \t D.  `repita ... enquanto \n", 
  perg7 = "7- Qual é a palavra-chave usada para criar uma estrutura condicional em portugol?\nA. escolha \t B. se \t C.enquanto \t D.para \n", 
  perg8 = "8- Como você define um bloco de código que deve ser executado quando nenhum dos casos especificados se aplica?\nA. default \t B. outro \t C. caso contrario \t D. nenhuma \n", 
  perg9 = "9- Qual alternativa melhor descreve a funcionalidade do laço `faca enquanto em Portugol?\n\nA. Executa o bloco de código somente se a condição for verdadeira.\nB. Executa o código pelo menos uma vez e depois verifica a condição para continuar ou não a executar.\nC. Verifica a condição antes de executar o bloco de código\nD. Executa o bloco de código um número fixo de vezes \n", 
  perg10 = "10- Marque a alternativa que mostra a forma certa de definir uma função:\n\nA. funcao inteiro dobro(inteiro num) { \t\t\t\t\t\t\t\t\t B. funcao real dobrar(num inteiro) { \n\t\t\tretorne num * 2 \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdevolva num * 2 \n\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t }\nC. funcao inteiro (inteiro num) dobro { \t\t\t\t\t\t\t\t\t D. inteiro dobro funcao(inteiro num) { \n\t\t\tretorne num * 2 \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tretorne num + 2 \n\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t }\n"

  // Vetor das Perguntas
  cadeia questoes[10] = {perg1, perg2, perg3, perg4, perg5, perg6, perg7, perg8, perg9, perg10}
  
  // Vetor das respostas do usuário
  cadeia respUsuario[10] 

  // Vetor que coloca a resposta do usuário em caixa alta (maiúscula)
  cadeia respCaixaAlta[10]   

  // Vetor do Gabarito (respostas da 1ª até a 10ª questão respectivamente)
  cadeia respCertas[10] = {"B", "B", "C", "C", "A", "C", "B", "C", "B", "A"} 

  // Vetores das Mensagens exibidas a cada resposta certa ou errada
  cadeia msgCertaResp[4] = {
    "\t\t'Boa, gafanhoto!'\t\t\t\t", 
    "\t\t'Wooow! Que D+!'\t\t\t\t", 
    "\t\t'Continue assim!'\t\t\t\t", 
    "\t\t\t'Muito bem!'\t\t\t\t\t"
  }
  cadeia msgErradaResp[4] = {
    "\t\t\t\t\t\t 'Oops... Resposta errada!'\t\t\t\t\t\t  ", 
    "\t\t\t\t'Cada erro é uma chance de aprender!'\t\t\t\t", 
    "\t\t\t'Não desista! A próxima pode ser a certa.'\t\t", 
    "\t 'Mantenha o foco e chegará na resposta certa.'\t  "
  }

  // Matriz da Tabela de Respostas (armazena as respostas do usuário e o gabarito)
  cadeia matriz[10][2]

  // Variável dos Pontos (armazena os pontos de acerto)
  inteiro pontos = 0

  funcao inicio() {
  	menuPrincipal()
  }

  // Exibe o menu principal do jogo e executa a contagem regressiva para entrar no Jogo se o usuário
  funcao menuPrincipal(){

    // Variável de entrada do jogo (deve receber I ou i para entrar)
    caracter opcao

    // Contador para Contagem Regressiva
    inteiro cont

    // Título "Jogo de Perguntas" feito no site https://www.asciiart.eu/text-to-ascii-art
    escreva("     _                         _  \n",           
    "    | | ___   __ _  ___     __| | ___\n",       
    " _  | |/ _ \\ / _` |/ _ \\   / _` |/ _ \\ \n",      
    "| |_| | (_) | (_| | (_) | | (_| |  __/ \n",      
    " \\___/ \\___/ \\__, |\\___/   \\__,_|\\___|  \n",     
    "|  _ \\ ___ _ |___/ _ _   _ _ __ | |_ __ _ ___ \n",
    "| |_) / _ \\ '__/ _` | | | | '_ \\| __/ _` / __| \n",
    "|  __/  __/ | | (_| | |_| | | | | || (_| \\__ \\ \n",
    "|_|   \\___|_|  \\__, |\\__,_|_| |_|\\__\\__,_|___/ \n",
    "               |___/                          \n\n")

    // Mensagens de introdução do Jogo
    escreva("Bem-vindo(a) estudante ao jogo de perguntas do Transforme-se!\n")
    escreva("Digite I ou i para iniciar -> ")
    
    // Recebe a letra que o usuário digitar
    leia(opcao)

    // Desvio Condicional que dá início ou não ao jogo
    escolha(opcao){
      caso 'I':
      caso 'i':

        // Exibe mensagem
        escreva("\n[ Você está entrando no jogo ]\n\nEm ")

        // Laço de Repetição para Contagem Regressiva
        para(cont = 3; cont >= 1; cont--){
            escreva(cont) u.aguarde(400)
            escreva(".")  u.aguarde(400)
            escreva(".")  u.aguarde(400)
            escreva(".")  u.aguarde(400)
        }

        // Limpa o terminal e inicia o jogo
        limpa()
        iniciaJogo()
        pare

      caso contrario:
        escreva("\n[ Você saiu do jogo ]\n")
        pare
    }
  }

  // Inicia e Executa o Jogo
  funcao iniciaJogo(){

      // índice (posição de um vetor)
      inteiro i

      // Repetição da exibição de perguntas
      para(i=0; i < 10; i++){

          // Variável que muda aleatoriamente as mensagens retornando um número que equivale a posição do vetor de mensagem
          inteiro posicao = u.sorteia(0, 3)

          // Exibe a questão
          escreva("\n", questoes[i], "\n-> ")
          // Solicita uma resposta do usuário
          leia(respUsuario[i])

          // Vetor que transforma a letra da resposta em maiúscula
          respCaixaAlta[i] = tx.caixa_alta(respUsuario[i])

          // Laço de Repetição que garante que o usuário não possa digitar opções além das exibidas e mais do que 1 letra
          enquanto (tx.numero_caracteres(respCaixaAlta[i]) > 1 ou ((respCaixaAlta[i] != "A") e (respCaixaAlta[i] != "B") e (respCaixaAlta[i] != "C") e (respCaixaAlta[i] != "D"))){ 
              
              escreva ("\n[Não há uma alternativa ", respCaixaAlta[i], ". Tente novamente!]\n")
              u.aguarde(1500)
              limpa() 

              // Repete a última pergunta feita
              escreva("\n", questoes[i], "\n-> ")
              // Solicita uma resposta do usuário novamente
              leia(respUsuario[i])

              // A variável respCaixaAlta recebe o valor dado anteriormente
              respCaixaAlta[i] = tx.caixa_alta(respUsuario[i])
          } 


          // Desvio Condicional que verifica se as respostas estão corretas ou não
          se(respCaixaAlta[i] == respCertas[i]){
              limpa()
              escreva("\n — — — — — — — — — — — — — — — —\n|\t\t\t Resposta Certa! OwO \t\t\t|\n|———————————————————————————————|\n")
              escreva("|\t\t", msgCertaResp[posicao], "|")
              calculoPontos(i)
              u.aguarde(1200)
              limpa()
          }
          senao {
              limpa()
              escreva("\n— — — — — — — — — — — — — — — — — — — — — — — — — — -\n|\t\t\t\t\t\t\t  Resposta Errada! T.T \t\t\t\t\t\t\t\t|\n|———————————————————————————————————————————————————|\n")
              escreva("|", msgErradaResp[posicao], "|")
              calculoPontos(i)
              u.aguarde(1200)
              limpa()
          }
      }

      // Após exibir as 10 questões exibe a mensagem final e a tabela de respostas
      mensagemFinal()
      exibeGabarito(i)
  }

  // Realiza o cálculo e a exibição dos pontos
  funcao calculoPontos(inteiro i){

    // Exibe pontos para resposta certa
    se((respCaixaAlta[i] == respCertas[i]) e (pontos == 0)){
        pontos=pontos+1 
        escreva("\n|\t\tPontuação Atual: ", pontos, " ponto \t\t|\n — — — — — — — — — — — — — — — —\n\n")
    } senao se((respCaixaAlta[i] == respCertas[i]) e (pontos >= 1)){
        pontos=pontos+1 
        escreva("\n|\t\tPontuação Atual: ", pontos, " pontos\t\t|\n — — — — — — — — — — — — — — — —\n\n")
    } 
    // Exibe pontos para resposta errada
    senao se((respCaixaAlta[i] != respCertas[i]) e (pontos == 1)){
        escreva("\n|\t\t\t\t\t\t\tPontuação Atual: ", pontos, " ponto \t\t\t\t\t\t\t|\n — — — — — — — — — — — — — — — — — — — — — — — — — —\n\n")
    } senao{
        escreva("\n|\t\t\t\t\t\t\tPontuação Atual: ", pontos, " pontos\t\t\t\t\t\t\t|\n — — — — — — — — — — — — — — — — — — — — — — — — — —\n\n")
    }
  }

  // Exibe a Mensagem Final dependendo da quantidade de pontos obtida e a pontuação final
  funcao mensagemFinal(){
    pontuacaoFinal()
    se(pontos >= 6){
      escreva("\n[ Parabéns, você conseguiu!'(OwO)' ]\n")
    } senao {
      escreva("\n[ Não foi dessa vez, tente novamente! (O_O) ]\n")
    }
  }

  // Exibe a Pontuação do Usuário (de 0 a 10) ao final do jogo
  funcao pontuacaoFinal(){
    escreva("\t— — — — — — — — — — — — — — — — — —\n|\t\t\t\tP O N T U A Ç Ã O : ")
    se(pontos == 10){
      escreva(pontos, "\t\t\t\t|\n\t— — — — — — — — — — — — — — — — — — —\n")
    } senao {
      escreva(pontos, "\t\t\t\t\t|\n\t— — — — — — — — — — — — — — — — — —\n")
    }
  }

  // Exibe o gabarito (respostas certas) e as respostas do Usuário
  funcao exibeGabarito(inteiro i) {
    escreva("\n — — — — — — — — — — — — — — — — — — —\n|\t Questões  |\tRespostas\t|\tGabarito\t|\n")
    
    // Laço de repetição que exibe gabarito e respostas
    para(i = 0; i <= 9; i++){

        // A primeira coluna da matriz recebe as respostas do usuário
        matriz[i][0] = respUsuario[i]
        // A segunda coluna da matriz recebe as respostas certas
        matriz[i][1] = respCertas[i]
        
        // Desvio condicional que construi a tabela de respostas e adiciona um 0 antes das questões menores que 10
        se(i < 9){
          escreva("|\t\t\t0", i+1, "\t\t |\t\t\t", respCaixaAlta[i])
          escreva("\t\t\t|\t\t\t", respCertas[i])
        } senao{
          escreva("|\t\t\t", i+1, "\t\t |\t\t\t", respCaixaAlta[i])
          escreva("\t\t\t|\t\t\t", respCertas[i])
        }

        escreva("\t\t\t|\n")
    }

    escreva(" — — — — — — — — — — — — — — — — — — —\n")  	
  }

} // Final do Programa
