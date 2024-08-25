// Exercício: Construa um algoritmo que receba o nome do aluno, do curso e do professor.
/* E ao final deve mostrar como no exemplo abaixo, cada um em uma linha:
Aluno: Miguel Santana
Curso: Lógica de programação
Professor: Guibson Santana */

programa {
  funcao inicio() {
    cadeia nome, curso, professor
    escreva("\nSeja bem-vindo(a) estudante!\nPara concluir seu cadastro precisaremos de algumas informações, vamos lá?\n\nInforme seu nome e sobrenome:\n")    
    leia(nome) 
    escreva("Informe o curso que você está fazendo na instituição:\n")
    leia(curso)    
    escreva("Informe o nome do(a) professor(a) da sua turma:\n")
    leia(professor) 
    limpa()
    escreva("\nEstudante: ", nome, "\nCurso: ", curso, "\nProfessor(a): ", professor, "\n")   
  }
}
