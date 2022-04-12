import 'package:aula_dart/aula_dart.dart' as aula_dart;
import 'dart:io';

void main(List<String> arguments) {
  var nome = "Gustavo";
  var sobrenome = "Orelio";
  var idade = 35;
  var total = idade / 2;
  var salario = 1900.05;
  var listaNomes = <String>[];
//list<String> nomes = new List<String>();

  print("Hello World " + nome + ", tudo bem? " + nome + " você vai ao cinema?");
  print(
      "Hello World $nome $sobrenome, tudo bem? $nome voce vai ao cinema?"); // interpolação

  //Verificar se a idade é par ou ímpar
  if (idade / 2 == 0) {
    print("Par");
  } else {
    print("Impar");
  }

  //Verificar se o salario é maior que o salario minimo
  if (salario > 1200) {
    print("Maior que o salario minimo");
  } else {
    print("Menor que o salario minimo");
  }

  //Imprimir todos os numeros terminados com 5 de 0 a 100
  //Foram nescessarias 80 instruçoes
  for (var contador = 5; contador <= 100; contador += 10){
    print(contador);
  }
  
}
