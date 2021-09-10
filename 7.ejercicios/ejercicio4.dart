void main() {
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  var resultado = [];

  for (var i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      resultado.add(a[i]);
    }
  }

  print('Los números pares son $resultado');
}
