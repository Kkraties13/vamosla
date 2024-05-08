programa {
  
  inclua biblioteca Util
  inclua biblioteca Texto
  inteiro qtdeAlunos = 0
  logico flagNotasColetadas = falso
  logico flagMediasCalculadas = falso
  funcao inicio() {
    
    inteiro func
    imprimeQtdeAlunos()
    real nota1[qtdeAlunos], nota2[qtdeAlunos], nota3[qtdeAlunos], medias[qtdeAlunos]
    cadeia nomeGremiles[qtdeAlunos]
    //menu
    escreva("Bem vindo!\n Digite 1 para acessar a op��o de cadastrar as notas\n Digite 2 para acessar a fun��o de listar as notas\n Digite 3 para acessar a fun��o de calcular as m�dias\n Digite 4 para acessar a fun��o de editar as notas do aluno\n Digite 5 para encerrar o programa\nDigite a op��o que deseja selecionar: ")
    leia (func)

    se (func == 1)
    {
    cadeia nomeGremiles[qtdeAlunos]
      cadastrarNota(nomeGremiles,nota1,nota2,nota3)
    }
    senao se (func == 2)
    {
      listarNota(nomeGremiles,nota1,nota2,nota3)
    }
    senao se (func == 3)
    {
      calcularMedia()
    }
    senao se (func == 4)
    {
      editarNota()
    }
    senao se (func == 5)
    {
      fim()
    }
    senao se (func > 5)
    {

      limpa ()

      escreva ("Insira um n�mero v�lido")
      
      escreva ("\n")

      Util.aguarde(1500)

      inicio()

    }

    
  }

  inteiro x = 0, cont = 0

  
  

  funcao cadastrarNota(cadeia nomeGremiles[], real nota1[],real nota2[],real nota3[]) {

    limpa ()

    cont++

    para (inteiro i = 0 ; i < qtdeAlunos; i++)
    {
       escreva ("Digite o nome do aluno: \n")
      leia (nomeGremiles[i])

      escreva ("Digite a primeira nota do aluno: ")
      leia (nota1[i])
      
      escreva ("Digite a segunda nota do aluno: ")
      leia (nota2[i])
      
      escreva ("Digite a terceira nota do aluno: ")
      leia (nota3[i])
    }
    flagNotasColetadas = verdadeiro
    inicio ()
  }

  funcao listarNota(cadeia nomeGremiles[], real nota1[],real nota2[],real nota3[]) {

    limpa ()

    cadeia cadastrarOuMenu

    se (flagNotasColetadas == falso)
    {
      escreva ("Cadastre ao menos um aluno para ser listado!\n")

      Util.aguarde(5000)

      limpa ()
      
      inicio ()
    } 
    senao
    {
      para (inteiro j = 0; j < qtdeAlunos; j++)
      {
      escreva ("Nome: ", nomeGremiles[j]," Nota 1: ", nota1[j], " Nota 2: ", nota2[j], "Nota 3: ", nota3[j], "\n" )
      }
    }

  }

  funcao calcularMedia() {

    limpa ()

    se (cont == 0)
    {
      escreva ("Cadastre ao menos um aluno para ser listado!\n")

      Util.aguarde(5000)

      limpa ()
      
      inicio ()
    }
    senao se (cont > 0)
    {
      para (inteiro i = 0; i > x; i++)
      {
      escreva ("Nome: ", nomeAluno[i], " M�dia: ", (nota1[i] + nota2[i] + nota3[i])/3 )
      }
    }

  }

  funcao editarNota() {

    cadeia editarNomeAluno
    inteiro repS = 1, repN = 1

    escreva ("Digite o nome do aluno que a nota ser� editada")
    leia (editarNomeAluno)

    para (inteiro i = 0; i < x; i++)
    {
      se (nomeAluno[i] != editarNomeAluno)
      { 
        escreva ("Digite o nome do aluno: \n")
        leia (nomeAluno[i])

        escreva ("Digite a primeira nota do aluno: \n")
        leia (nota1[i])
        
        escreva ("Digite a segunda nota do aluno: \n")
        leia (nota2[i])
        
        escreva ("Digite a terceira nota do aluno: \n")
        leia (nota3[i])

        repS++

      }
      senao
      {
        repN++
      }

      se (repN == x)
      {
        escreva ("Esse aluno n�o foi encontrado")
      }

      inicio()

      
    }

  }


  funcao inteiro qtdeAlunos() {

    se (x >= 0)
    {
    escreva ("Quantos alunos v�o ser registrados?\nDigite a seguir a quantidade")
    leia (x)
    }

    retorne x 


  }

  funcao imprimeQtdeAlunos(){
    faca{
      limpa()
      escreva("Seja bem viado \n")
      escreva("Por favorzinho, informe a quantidade de gremiles:\n")
      leia(qtdeAlunos)
      se(qtdeAlunos > 1){
        escreva("oh deu erro aqui, ve se corrige")
      }
    }enquanto(qtdeAlunos < 1)
  }

  funcao cadeia nomeAluno(inteiro a) {

    cadeia nomeAluno[x]

    escreva ("Digite o nome do aluno: ")
    leia (nomeAluno[a])

    retorne nomeAluno

    escreva (nomeAluno)

  }

  funcao fim() {

    limpa ()

    escreva ("Fim!!!\nPrograma encerrado")

  }
}
