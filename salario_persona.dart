import 'dart:io';

void main() {
  int nume_horas = 120;
  int hora_extra = 175;
  int salario_persona = 0;
  int aviso = 0;
  int j = 0;
  print("Dato del empleado");
  var persona = stdin.readLineSync();

  while (j < 5) {
    j = j + 1;
    print(" cuantas horas trabajo el empleado : $persona : ");
    String personaSTRING = stdin.readLineSync() ?? '0';
    int h = int.parse(personaSTRING);
    if (h >= 27 && h < 41) {
      salario_persona = nume_horas * h;
      print(
          "El empleado : $persona Laboro $h Horas , el Salario que le corresponde es :$salario_persona ");
    } else if (h > 40) {
      salario_persona = nume_horas * 40;
      int max_extras = h - 40;
      int ex_hora = max_extras * hora_extra;
      salario_persona = salario_persona + ex_hora;
      print(
          "El empleado : $persona Laboro $h Horas , el Salario que le corresponde es :$salario_persona ");
    } else if (h < 27) {
      aviso = aviso + 1;
      print(
          "El empleado : $persona Laboro $h Horas , No cumple con las horas solicitadas se le levantara un acta administrativa");
    }
    if (aviso >= 2) {
      print(
          "Estimado empleado : $persona por este medio le informamos que usted esta oficialmente fue de la empresa por no cumplir con las horas adecuadas.");
      break;
    }
  }
}
