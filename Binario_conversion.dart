/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Desarrollo Movil Multiplataforma
    Nombre del Maestro: Chuc Uc Joel Ivan
    Nombre de la actividad: Ejercicio2
    Nombre del alumno: Aldana Chuc Eduardo Aldana
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */


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
