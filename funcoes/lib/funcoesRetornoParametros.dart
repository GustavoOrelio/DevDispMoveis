import 'dart:io';

void show() {
  print("\nFunçoes sem retorno e sem parâmetros");

  notas();

  salario();
}

//Fazer uma função que solicita 2 notas, calcula média e informa se é aprovado
void notas() {
  print("Informe a 1° nota: ");
  var notaA = stdin.readLineSync();
  double nota1 = double.parse(notaA!);

  print("Informe a 2° nota: ");
  var notaB = stdin.readLineSync();
  double nota2 = double.parse(notaB!);

  double media = (nota1 + nota2) / 2;
  if (media >= 6) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
}

//Atividade
//Fazer uma funçao que solicita um salario e o valor de desconto
//No final informar se o salario está positivo

void salario() {
  print("Informe seu salario: ");
  var salario1 = stdin.readLineSync();
  double salario = double.parse(salario1!);

  print("Se caso tiver pego um vale, informe o valor do vale: ");
  var vale1 = stdin.readLineSync();
  double vale = double.parse(vale1!);

  if (vale == 0) {
    print("Vc recebera seu salario inteiro pois não pegou nenhum vale");
  } else {
    double salarioTotal = salario - vale;
    print("Vc tem $salarioTotal reais disponiveis porque pegou um vale");
  }
}
