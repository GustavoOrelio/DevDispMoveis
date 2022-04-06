import 'dart:io';

void dadosDisciplina() {
  String? id;
  String? nome;
  String? cargaHoraria;
  String? serie;

  int porcentagem = 75;
  double porcentagemPresenca = porcentagem / 100;

  print("Informe o id da disciplina: ");
  id = stdin.readLineSync();
  int idDisciplina = int.parse(id!);

  print("Informe o nome da disciplina: ");
  nome = stdin.readLineSync();

  print("Informe a carga horaria da disciplina em horas: ");
  cargaHoraria = stdin.readLineSync();
  int ch = int.parse(cargaHoraria!);

  print("Informe a serie: ");
  serie = stdin.readLineSync();

  double presenca = porcentagemPresenca * ch;

  print("\nO ID da disciplina é: $idDisciplina");
  print("\nO nome da disciplina é: $nome");
  print("\nA carga horaria da disciplina é: $ch");
  print("\nA série do aluno é: $serie");
  print("\nA frequencia minima da disciplina é: $presenca");
}
