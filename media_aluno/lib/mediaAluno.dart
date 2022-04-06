import 'dart:io';

void mediaAluno() {
  String? nota;
  double media = 6;

  print("Informe a nota do aluno: ");
  nota = stdin.readLineSync();
  double notaMedia = double.parse(nota!);

  print("\nA nota do aluno é: $notaMedia");

  if (notaMedia > media) {
    print("\nA nota está acima da media");
  } else {
    print("A nota está a baixo da media");
  }
}
