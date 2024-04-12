programa {
  funcao inicio() {
    inteiro input1, output1, calc1
    escreva("Digite 1 para converter Milha para Quilometro ou 2 para converter Quilometro para Milha: ")
    leia(input1)

    se (input1==1) {
      escreva("Digite um valor em Milhas para ser convertido para Quilometros: ")
      leia(calc1)

      escreva(calc1*1.609344)
    } senao se (input1==2) {
      escreva("Digite um valor em Quilometros para ser convertido para Milhas: ")
      leia(calc1)

      escreva("Em Milhas terrestres\n", calc1*0.621371, "\n")
      escreva("Em Milhas nauticas\n", calc1*0.539957)
    }
  }
}
