// não entendi a questão da exceção, o máximo que pode ocorrer é tentar dividir algo por 0, ai daria infinito,coisa que o próprio dart
// ja avisa

class Functions {
  static double somar(double x, double y) {
    return x + y;
  }

  static double subtrair(double x, double y) {
    return x - y;
  }

  static double multiplicar(double x, double y) {
    return x * y;
  }

  static double dividir(double x, double y) {
    return x / y;
  }
}
