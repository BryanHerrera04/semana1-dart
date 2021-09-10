abstract class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);
}

class Artista extends Persona with Dibujar {
  var tipoArte;
  var instrumento;
  var estudio;

  Artista(String nombre, String apellido, int edad)
      : super(nombre, apellido, edad);
}

class Ingeniero extends Persona with Dibujar, Leer {
  var profesion;
  var perfil;
  var universidad;

  Ingeniero(String nombre, String apellido, int edad)
      : super(nombre, apellido, edad);
}

class Doctor extends Persona with Leer, Ejercitarse {
  var especialidad;
  var clinica;
  var telefono;

  Doctor(String nombre, String apellido, int edad)
      : super(nombre, apellido, edad);
}

class Atleta extends Persona {
  var deporte;
  var trofeos;
  var entreno;

  Atleta(String nombre, String apellido, int edad)
      : super(nombre, apellido, edad);
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  var peso;
  var altura;
  var categoria;

  Boxeador(String nombre, String apellido, int edad)
      : super(nombre, apellido, edad);
}

mixin Dibujar {
  dibujar() {
    return 'Dibujar';
  }
}

mixin Leer {
  leer() {
    return 'Leer';
  }
}

mixin Ejercitarse {
  ejercitarse() {
    return 'Ejercitarse';
  }
}

mixin Boxear {
  boxear() {
    return 'Boxear';
  }
}

void main() {
  var artista = Artista('Bryan', 'Herrera', 23);
  artista.estudio = 'Cantante';
  artista.instrumento = 'Guitarra';
  artista.tipoArte = 'Musica';

  print(
      'El artista ${artista.nombre} ${artista.apellido} de edad ${artista.edad}. Es ${artista.estudio} de ${artista.tipoArte}, toca el instrumento ${artista.instrumento}.');
  print('Mixin: ${artista.dibujar()}');

  var ingeniero = Ingeniero('Bryan', 'Herrera', 23);
  ingeniero.profesion = 'Ing. Mecatrónica';
  ingeniero.perfil = 'Desarrollador';
  ingeniero.universidad = 'Universidad de los Llanos';

  print(
      'El Ingeniero ${ingeniero.nombre} ${ingeniero.apellido} de edad ${ingeniero.edad}. Es ${ingeniero.profesion} con un perfil profesional ${ingeniero.perfil} egreado de la ${ingeniero.universidad}.');
  print('Mixin: ${ingeniero.dibujar()}');
  print('Mixin: ${ingeniero.leer()}');

  var doctor = Doctor('Bryan', 'Herrera', 23);
  doctor.clinica = 'Clinica del Meta';
  doctor.especialidad = 'Cirujano';
  doctor.telefono = '3211231232';

  print(
      'El Doctor ${doctor.nombre} ${doctor.apellido} de edad ${doctor.edad}. Es ${doctor.especialidad} de ${doctor.clinica} su numero de contacto es ${doctor.telefono}.');
  print('Mixin: ${doctor.leer()}');
  print('Mixin: ${doctor.ejercitarse()}');

  var atleta = Atleta('Bryan', 'Herrera', 23);
  atleta.deporte = 'Baloncesto';
  atleta.trofeos = 'Ganador NBA';
  atleta.entreno = 'Todos los días';

  print(
      'El Atleta ${atleta.nombre} ${atleta.apellido} de edad ${atleta.edad}. Del deporte ${atleta.deporte} es ${atleta.trofeos} sin embargo, ha entrenado ${atleta.entreno}.');

  var boxeador = Boxeador('Bryan', 'Herrera', 23);
  boxeador.categoria = 'Medio';
  boxeador.altura = '1.80 m';
  boxeador.peso = '75 Kg';

  print(
      'El Boxeador ${boxeador.nombre} ${boxeador.apellido} de edad ${boxeador.edad}. Participa en la categoría ${boxeador.categoria} con un peso de ${boxeador.peso} y altura ${boxeador.altura}.');
  print('Mixin: ${boxeador.ejercitarse()}');
  print('Mixin: ${boxeador.boxear()}');
}
