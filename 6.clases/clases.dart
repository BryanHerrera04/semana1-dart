class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);

  //Completo
  Persona.completo(
      {this.nombre = 'nombre1', this.apellido = 'apellido1', this.edad = 24});
}

class Padre extends Persona {
  int hijos;
  //Padre({required this.hijos}) : super('Steven', 'Díaz', 24);
  Padre({required this.hijos}) : super.completo();
}

//asbtract
abstract class vehiculo {
  String? placa;

  bool vehiculoEncendido();
}

class Taxi extends vehiculo with Terreste, Acuatico {
  bool vehiculoEncendido() => true;
}

class Lancha extends vehiculo with Acuatico {
  bool vehiculoEncendido() => true;
}

mixin Terreste {
  int? llantas;
  int? kilometraje;

  tipoDeVehiculo() {
    return "Terrestre";
  }
}

mixin Acuatico {
  int? motores;
  tipoDeVehiculo() {
    return "Acuatico";
  }
}

//Implementar como interfaz, interferaz no existe
class Empleado implements Persona {
  @override
  late int edad;

  @override
  late String nombre;

  @override
  late String apellido;
}

void main() {
  //Se puede ignorar el new
  var persona = Persona('Bryan', 'Herrera', 23);
  var elPadre = Padre(hijos: 7);

  var vehiculoTaxi = Taxi();
  vehiculoTaxi.llantas = 2;
  vehiculoTaxi.tipoDeVehiculo();

  var lalancha = Lancha();
  lalancha.tipoDeVehiculo();

  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
  print(vehiculoTaxi.tipoDeVehiculo());
  print(lalancha.tipoDeVehiculo());
  print(lalancha.motores);
  print(vehiculoTaxi.kilometraje);
}
