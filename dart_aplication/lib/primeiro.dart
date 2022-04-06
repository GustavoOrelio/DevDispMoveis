import 'dart:io';

void minhaFuncao() {
  //tipo nome = atribuição

  //definindo variavies
  String nomeProduto = "Chocolate";
  double precoProduto = 2.2;
  int quantidadeProduto = 3;

  //definindo variavel nula
  String? descricao;

  //convertando String em Double
  String entradaPreco = "3.5";
  double preco = double.parse(entradaPreco);

  //convertando String em Int
  String quantidade = "150";
  int quantidadeEstoque = int.parse(quantidade);

  //definindo variavies de inferencia
  var nomeProduto2 = "Chocolate"; //definindo uma variavel String
  var quantidade2 = 23;
  var preco2 = 34.5;

  //definindo uma variavel dinamica
  dynamic valor = 3;
  valor = "Paulo";
  valor = 45.5;

  print("Informe seu nome: ");
  var nome = stdin.readLineSync();

  print(
      "\nO nome do produto é $nomeProduto, o preço é $precoProduto e vamos comprar $quantidadeProduto");

  print(
      "\nA quantidade em estoque é $quantidadeEstoque e o preço unitario de cada $nomeProduto é $preco");

  print("O meu nome é $nome");
}
