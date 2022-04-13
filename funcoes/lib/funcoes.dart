void show() {
  print("""
  obs: para executar este código:
  (1) tem que ter a extensão Code Runner;
  (2) habilitar Code Runner: Run in Terminal; e 
  (3) selecionar a função main no arquivo dart_function.dart e clicar em Run Code
  """);

  /*O que é função?

  Exemplos:

  O que é top Level funcion:

  Sintaxe para definir uma função
  tipoRetorno nomeFuncao ([parametros]){
    [...] -> codigo 
    [return valor] -> se a função tiver retorno
  }

  Sintaxe para chamar uma função 
  nomeFuncao([parametro]);

  var valor = nomeFuncao([parametros]); -> somente se tiver retorno

  print('O valor é ${nomeFuncao([parametros])}') -> uma função que recebe como parametro uma outra

  Variaveis de uma função
  -> Sem retorno e sem parametro
  -> Sem retorno e com parametro
  -> com retorno e sem parametro
  -> Com retorno e com parametro */

  /* 
  (1) Criar um projeto chamado de funçoes anonimas;
  (2) Criar 4 arquivos: funçoes, parametros do tipo funçaõ, funcoes anonimas, arrow functions;
  (3) Para cada arquivo, criar o método show - sem retorno, sem parametro com um print de teste; e 
  (4) Chamar o método show de cada arquivo no método main.
   */

  /* 
  No 1° arquivo definir 4 funçoes:
  (1) - Verificar a aprovação;
  (2) - Verificar maior nota; e
  (3) - calcular a média.
  (4) - uma interface para que o usuário escolha qual fução executar
   */

  /* 
  Projeto de controle de estoque
  (1) - verificiar estoque e dar baixa
  (2) - calcular troco a ser devolvido para o cliente
  (3) - calcular desconto
  (4) - calcular preco de compra e colocar uma porcentagem para venda
   */
}
