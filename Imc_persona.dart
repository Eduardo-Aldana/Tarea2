import 'dart:io';

void main() {
  double masa_persona = 0;
  print("INGRESAR EL PESO DE LA PERSONA");
  String dato = stdin.readLineSync() ?? '0';
  int peso_persona = int.parse(dato);

  print("Ingresa la altura");
  String dato2 = stdin.readLineSync() ?? '0';
  int estat_persona = int.parse(dato2);
  double conversion = estat_persona / 100;
  masa_persona = (peso_persona / (conversion * conversion));

  if (masa_persona < 18.50) {
    print("Peso inferior al normal");
  }

  if (masa_persona >= 18.50 && masa_persona < 24.99) {
    print("un peso Normal");
  }

  if (masa_persona >= 25.0 && masa_persona < 29.99) {
    print("tiene un Peso superior al normal");
  }

  if (masa_persona > 30.0) {
    print("tiene obesidad");
  }
  print("Su IMC es $masa_persona");
}
