programa {
  
  inclua biblioteca Util
  inclua biblioteca Texto
  funcao inicio() {

    inteiro func

    escreva("Bem vindo!\n Digite 1 para acessar a op��o de cadastrar as notas\n Digite 2 para acessar a fun��o de listar as notas\n Digite 3 para acessar a fun��o de calcular as m�dias\n Digite 4 para acessar a fun��o de editar as notas do aluno\n Digite 5 para encerrar o programa\nDigite a op��o que deseja selecionar: ")
    leia (func)

    se (func == 1)
    {
      cadastrarNota()
    }
    senao se (func == 2)
    {
      listarNota()
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

    
  }

  inteiro x = 0, cont = 0

  
  

  funcao real cadastrarNota() {

    limpa ()

    cont++

    qtdeAlunos()

    real nota1[x], nota2[x], nota3[x]


    para (inteiro i = 0 ; i < x; i++)
    {
      nomeAluno(i)

      escreva ("Digite a primeira nota do aluno: ")
      leia (nota1[i])
      
      escreva ("Digite a segunda nota do aluno: ")
      leia (nota2[i])
      
      escreva ("Digite a terceira nota do aluno: ")
      leia (nota3[i])
    }

    inicio ()

    retorne nota1 nota2 nota3

    


  }

  funcao listarNota() {

    limpa ()

    cadeia cadastrarOuMenu

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
      escreva ("Nome: ", nomeAluno[i]," Nota 1: ", nota1[i], " Nota 2: ", nota2[i], "Nota 3: ", nota3[i], "\n" )
      }
    }

  }

  funcao calcularMedia() {

    para (inteiro i = 0; i > x; i++)
    {
    escreva ("Nome: ", nomeAluno[i]," Nota 1: ", nota1[i], " Nota 2: ", nota2[i], "Nota 3: ", nota3[i], " M�dia: ", (nota1[i] + nota2[i] + nota3[i])/3 )
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
        nomeAluno(i)

        escreva ("Digite a primeira nota do aluno: ")
        leia (nota1[i])
        
        escreva ("Digite a segunda nota do aluno: ")
        leia (nota2[i])
        
        escreva ("Digite a terceira nota do aluno: ")
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
