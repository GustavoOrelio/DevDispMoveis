void show() {
  print("\nFunçoes com retorno e com parâmetros");
  var resultado = notas(8, 6);
  print("O aluno está $resultado");
  var salarioTotal = salario(1500, 0);
}

//Com retorno e com parametro

String notas(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'Aprovado' : 'Reprovado';
}

String? salario(double salario, double vale) {
  if (vale == 0) {
    print("Vc recebera seu salario inteiro pois não pegou nenhum vale");
  } else {
    double salarioTotal = salario - vale;
    print("Vc tem $salarioTotal reais disponiveis porque pegou um vale");
  }
}
