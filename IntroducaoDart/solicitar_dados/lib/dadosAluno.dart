import 'dart:io';

void dadosAluno() {
  String? registroAcademico;
  String? nome;
  String? anoNascimentoAluno;
  String? serie;

  int anoAtual = 2022;

  print("Informe seu RA: ");
  registroAcademico = stdin.readLineSync();
  int ra = int.parse(registroAcademico!);

  print("Informe seu nome: ");
  nome = stdin.readLineSync();

  print("Informe seu ano de nascimento: ");
  anoNascimentoAluno = stdin.readLineSync();
  int anoNascimento = int.parse(anoNascimentoAluno!);

  print("Informe sua série: ");
  serie = stdin.readLineSync();

  int idade = anoAtual - anoNascimento;

  print("\nO registro academico é: $ra");
  print("\nO nome do aluno é: $nome");
  print("\nO ano de nascimento do aluno é: $anoNascimento");
  print("\nA série do aluno é: $serie");
  print("\nA idade do aluno é: $idade anos");
}
