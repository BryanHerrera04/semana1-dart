String obtenerNombre({required String valor}) {
  if (valor == 'Juan') {
    throw FormatException("El nombre de $valor no puede ser procesado");
  }
  if (valor == "Pedro") {
    throw ("El nombnre de $valor no puede ser proceado P");
  }

  return valor;
}

void main() {
  try {
    String resultado = obtenerNombre(valor: 'Bryan');
    print(resultado);
  } on FormatException catch (e) {
    print("Formatexception");
    print(e);
  } catch (e) {
    print("General");
    print(e);
  }
}
