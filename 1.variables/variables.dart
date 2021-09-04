void main() {
  var nombre = "juan";
  String nombre_dos = "juan";
  var edad = 89;
  int edad_dos = 34;
  var test;

  test = 100;

  //null safety
  int? variableNull = null; //Cuando sé que es null, anteponer el "?"
  String? variableStringNull = null;

  //final - constante
  // Final = Const -- Muy parecido. Const no se puede cambiar. Final Permite dar atributo
  final String variableFinalTest = "hola";
  const String variableConstanteTest = "Hola";

  print(nombre_dos.toUpperCase());
  print(nombre);
  print(test);
}