void show() {
  print("\nFunçoes sem retorno e com parâmetros");

  notas(7, 8);

  salario(1500, 0);
}

void notas(double nota1, nota2) {
  double media = (nota1 + nota2) / 2;
  print(media >= 6 ? 'aprovado' : 'reprovado');
}

//Atividade
//Atividade do projeto

void salario(double salario, double vale) {
  if (vale == 0) {
    print("Vc recebera seu salario inteiro pois não pegou nenhum vale");
  } else {
    double salarioTotal = salario - vale;
    print("Vc tem $salarioTotal reais disponiveis porque pegou um vale");
  }
}

