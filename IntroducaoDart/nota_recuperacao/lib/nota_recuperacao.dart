import 'dart:io';

void nota_recuperacao() {
  String? nota1;
  String? notaRec;

  print("Informe a nota: ");
  nota1 = stdin.readLineSync();
  double nota = double.parse(nota1!);

  if (nota > 10) {
    print("Insira a nota apenas de 0 a 10");
  }

  else if (nota < 6) {
    print("Informe a nota da recuperação: ");
    nota1 = stdin.readLineSync();
    double notaRec = double.parse(nota1!);
    if (notaRec >= 6) {
      print("Aprovado");
    } else {
      print("Reprovado");
    }
  } else {
    print("Voce está aprovado não precisara realizar a recuperação");
  }
  
}
