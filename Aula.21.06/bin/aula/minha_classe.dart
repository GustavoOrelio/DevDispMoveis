
main() {
  var minhaClasse = MinhaClasse();
  minhaClasse.meuAtributo = 'teste';

  print(minhaClasse.atributoNaoNulo);
  print(minhaClasse.meuAtributo);

  var bola = Bola();
  print(bola.cor);
  print(bola.tamanho);

  var luva = Luva();
  luva.cor = "Preto";
  luva.tipoTecido = "Malha";

  print(luva.cor);
  print(luva.tipoTecido);

  var camiseta = Camiseta();
  camiseta.cor = "Azul";
  camiseta.tamanho = "P";

  print(camiseta.cor);
  print(camiseta.tamanho);

  var resultado = notas(8, 6);
  print("O aluno está $resultado");

  var aluno = Aluno(CPF: "111.111.111-11", nome: "Mariana", RA: 1111);
  aluno.anoNascimento = 2002;
  aluno._anoNascimento = 2020;
}

class MinhaClasse {
  String? meuAtributo;
  String atributoNaoNulo = 'Valor inicial';

  MinhaClasse() {
    print('Minha Classe');
  }
}

class Bola {
  String cor = "Branco";
  int tamanho = 7;
}

class Luva {
  String? cor;
  String? tipoTecido;
}

class Camiseta {
  String? cor;
  String tamanho = "";
}

/* 
Qual a diferença em fazer a inicialização no atributo e no construtor? 
  Usamos o atributo quando temos em mente o valor que iremos atribuir
  Já construtor usamos quando não temos um valor padrão para iniciar atruido.

O que é e para que serve o construtor? Qual codigo pode-se definir nele
  
*/

String MinhaCamiseta(String cor, String tamanho) {
  return "";
}

String notas(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'Aprovado' : 'Reprovado';
}

class Aluno {
  int RA;
  String nome;
  String CPF;
  String? Email;
  late int _anoNascimento;
  String? telefone;

  int get anoNascimento => _anoNascimento;

  set anoNascimento(int anoNascimento) {
    if (anoNascimento > 0) this.anoNascimento = anoNascimento;
  }

  Aluno({
    required this.RA,
    required this.nome,
    required this.CPF,
  });

  int calcularIdade() {
    var anoAtual = DateTime.now().year;
    var idade = anoAtual - anoNascimento;
    return idade;
  }
}

bool validarCpf(String cpf){
    
    int numerosCpf = 0;
    int contador = 10;
    int primeiroValorCpf = int.parse(cpf[1]);
    double somarDividir;

    if(cpf.length == 11){
      for(int i=0;i< cpf.length - 2; i++){
        int valorConvertidoCPF = int.parse(cpf[i]);
        numerosCpf += (contador * valorConvertidoCPF);
        contador --;
      }
      somarDividir = (numerosCpf * 10) % 11;

      if(somarDividir == primeiroValorCpf){
        return true;
      }else if(somarDividir == 10){
        somarDividir = 0;
        if(somarDividir == primeiroValorCpf){
          return true;
        }else{
          return false;
        }
      }else{
        return false;
      }
    }else{
      return false;
    }   
  }

