String cadenaPalindromas({required String cadena}) {
  cadena = cadena.toUpperCase();
  List<String> resultado = cadena.split('');
  resultado.removeWhere((element) => element == ' ');
  var mensaje;

  if (resultado.join() == resultado.reversed.join()) {
    mensaje = 'La cadena es Palindroma';
  } else {
    mensaje = 'La cadena no es Palindroma';
  }

  return mensaje;
}

void main() {
  String resultado = cadenaPalindromas(cadena: 'A cavar a Caravaca');
  print(resultado);
}
