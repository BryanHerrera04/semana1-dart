void main() {
  //Variables tipo Numbers
  int edadInt = 23;
  //num edadNum = 23;
  double puntosDouble = 10.2;
  var edadVar = 48;

  num edadNum = edadInt; //Permite guardarlo con otro tipo
  num puntosNum = puntosDouble;

  //print(edadNum);

  //Tipo String
  var texto1 = 'Valor con comilla simple';
  print(texto1);

  var texto2 = "Valor con comilla doble";
  print(texto2);

  //Texto en ingles
  var texto3 = "It's ease to escape the string delimiter";
  print(texto3);

  //Al dejarlo con '' hay error por el tema del idioma
  //var texto4 = 'It's ease to escape the string delimiter';
  // Se colo \ con la ' del texto se soluciona
  var texto4 = 'It\'s ease to escape the string delimiter';
  print(texto4);

  //Concatenar
  var texto6 = "Este valor se une con el siguente valor" + ", yo me uno";
  print(texto6);

  //Se puede concatenar con "" o ''
  var texto7 = "Me uno con " ", con este valor";
  print(texto7);

  //Interpolar
  var texto5 = "El resultado de sumar 3 + 3 es ${3 + 3}";
  var texto8 = "texto a interpolar";
  var variableTipoNumero = 50;
  //Opcion 1
  //var texto9 = "El valor de la variableTipoNumero es $variableTipoNumero";

  //opcion 2
  var texto9 =
      "Vamos a interpolar texto7 \'$texto7'\ El valor de la variableTipoNumero es $variableTipoNumero";
  print(texto5);
  print(texto9);

  //var texto6 = "El resultado de sumar 3 + 3 es ${texto1}";
  //print(texto6);

  //-------Estructura
  //Multilenia
  var texto10 = '''
    CREATE TABLE Person(
                PersonID int,
                LastName varchar(255)
              );''';

  print(texto10);

  //caracter
  var texto11 = r'mostrar caracterir \';
  print(texto11);
}
