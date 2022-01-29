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
