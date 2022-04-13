import 'dart:io';

void show() {
  print("\nFunçoes com retorno e sem parâmetros");
  var resultado = notas();
  print("O aluno está $resultado");
  var salarioTotal = salario;
  print(salarioTotal);
}

String notas() {
  print("Informe nota 1: ");
  double nota1 = double.parse(stdin.readLineSync()!);

  print("Informe nota 2: ");
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  if (media >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

double? salario() {
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
