String obtenetNombre(String valor) {
  return 'valor función $valor';
}

String obtenerNombreFuncionFelcha(String valor) => 'valor función $valor';

//String obtenerFuncionNameParameter({String valor = "Steven"}) {
//  return 'valor función $valor';
//}

//-Mimso anterior pero Para enviar null
String obtenerFuncionNameParameter(
    {String? valor, String valor2 = "Steven", required String valor3}) {
  return 'valor función $valor otra valor $valor2 , otra valor $valor3';
}

String funcionConParametrosOopcionales(String valor1, [int? valor2]) {
  return '$valor1 y también $valor2';
}

funcionTest(String valor1, String valor3, String valor4, String valor5) {}

void main() {
  //funcino anonima

  var miFuncionAnnonima = (String valor) {
    return valor;
  };

  print(obtenetNombre("Bryan"));
  print(obtenerNombreFuncionFelcha("BRYAN"));
  //print(obtenerFuncionNameParameter());
  print(obtenerFuncionNameParameter(valor3: "TEST"));
  print(funcionConParametrosOopcionales("Yudy", 3));
  print(miFuncionAnnonima("Anonima"));
}
