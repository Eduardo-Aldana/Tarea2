import 'dart:io';

void main() {
  print('ESCRIBA UNA FRASE PORFAVOR ');
  String? palabra = stdin.readLineSync();
  int n_palab = palabra!.split(' ').length;
  palabra = palabra.replaceAll(" ", "").toLowerCase();
  String? invertir = palabra.split('').reversed.join('');
  if (palabra == invertir) {
    print('Si es palindromo, Numero de palabras: $n_palab');
  } else {
    print('No es palindromo');
  }
  print(invertir);
}
