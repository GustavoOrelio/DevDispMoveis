void main(args) {
  try {
    gerarErro(int.parse(args(0)));
  } on Valor1Exception {
    print("Valor 1");
  } on Valor2Exception {
    print("Valor 2");
  } on Valor3Exception {
    print("Valor 3");
  } on Exception catch (e, s) {
    print("Não foi possivel: $e");
  } catch (e) {
    print("Ouve um erro");
  } finally {
    print("Finalizado");
  }
}

void gerarErro(int numero) {
  if (numero == 1) {
    throw Valor1Exception();
  }
  if (numero == 2) {
    throw Valor2Exception();
  }
  if (numero == 3) {
    throw Valor3Exception();
  }
  if (numero == 4) {
    dynamic valor = true;
    valor++;
  }
}

class Valor1Exception implements Exception {}

class Valor2Exception implements Exception {}

class Valor3Exception implements Exception {}
