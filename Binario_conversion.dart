import 'dart:io';

void main() {
  int positivo = 0;
  int negativo = 1;
  print("INGRESA UN DATO PARA LA CONVERSION");
  String dato = stdin.readLineSync() ?? '0';
  int numero = int.parse(dato);
  while (numero > 0) {
    positivo = positivo + (numero % 2) * negativo;
    numero = (numero / 2).floor();
    negativo = negativo * 10;
  }
  print("$dato su numero en binario es: $positivo");
}
