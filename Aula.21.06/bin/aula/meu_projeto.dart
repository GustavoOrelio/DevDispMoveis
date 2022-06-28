main() {
  var cliente = Cliente(CPF: "111.111.111-11", nome: "Mariana", telefone: "(44)99828-6859");
  print(cliente);

  var produto = Produto(nomeProduto: "Cimento", quantidadeProduto: 5, codigoProduto: "15248");
  print(produto);

  var vendedor = Vendedor(nome: "Jair", CPF: "999.999.99-99", telefone: "(44)99828-3686");
}


class Cliente {
  String nome;
  String CPF;
  String? Email;
  String telefone;

  Cliente({
    required this.nome,
    required this.CPF,
    required this.telefone,
  });
}

class Produto {
  String nomeProduto;
  int quantidadeProduto;
  String codigoProduto;

  Produto({
    required this.nomeProduto,
    required this.quantidadeProduto,
    required this.codigoProduto,
  });
}

class Vendedor {
  String nome;
  String CPF;
  String? Email;
  String telefone;

  Vendedor({
    required this.nome,
    required this.CPF,
    required this.telefone,
  });
}
