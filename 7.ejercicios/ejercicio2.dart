void main() {
  // Ejercicio 2

  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  var lista2 = [];

  for (var i = 0; i < a.length; i++) {
    for (var ii = 0; ii < b.length; ii++) {
      if (a[i] == b[ii]) {
        lista2.add(a[i]);
      }
    }
  }
  print(lista2.toSet());
}
