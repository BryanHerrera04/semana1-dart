import 'dart:math';

void main() {
  // Ejercicio 1

  var rng = Random();
  var lista = [];
  int edad = 0;
  int? edadMayor = 0;
  int? edadMenor = 0;
  int prom = 0;

  for (var i = 0; i < 6; i++) {
    edad = rng.nextInt(100);
    lista.add(edad);
    prom = prom + edad;

    if (edadMenor! > edad || edadMenor == 0) {
      edadMenor = edad;
    }
    if (edadMayor! < edad) {
      edadMayor = edad;
    }
  }

  var res = prom / 6;
  print("---------- Ejercicio Uno ----------");
  print("Edades ${lista}");
  print("El promedio es $res");
  print("Mayor ${edadMayor} y Menor ${edadMenor}");
}
