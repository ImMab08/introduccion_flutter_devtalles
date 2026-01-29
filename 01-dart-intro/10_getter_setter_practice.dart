void main() {

  final Estudiante estudiante = Estudiante(nombre: '', apellido: '', edad: 10);
  print('Nombre completo: ${ estudiante.nombreCompleto }');
  print('Nombre: ${ estudiante.nombre }');
  print('Apellido: ${ estudiante.apellido }');
  print('Edad: ${ estudiante.edad }');

}

class Estudiante {

  String _nombre;
  String _apellido;
  int _edad;

  Estudiante({
    required String nombre,
    required String apellido,
    required int edad,
  })  : assert(nombre.trim().isNotEmpty,
              'El nombre no puede estar vacío'),
        assert(apellido.trim().isNotEmpty,
              'El apellido no puede estar vacío'),
        assert(edad >= 3,
              'La edad debe ser mayor o igual a 3'),
        _nombre = nombre,
        _apellido = apellido,
        _edad = edad;

  // Getters
  String get nombreCompleto => '$_nombre $apellido';
  String get nombre => _nombre;
  String get apellido => _apellido;
  int get edad => _edad;
  
  // Setters
  set nombre( String value ) {
    if (value.trim().isEmpty) {
      throw Exception('Por favor ingresa un nombre para el estudiante.');
    }
    _nombre = value;
  }

  set apellido( String value ) {
    if (value.trim().isEmpty) {
      throw Exception('Por favor ingresa un apellido para el estudiante.');
    }
    _apellido = value;
  }

  set edad( int value ) {
    if (value < 3 ) {
      throw Exception('La edad del estudiante tiene que ser mayor a 3 años');
    }
    _edad = value;
  }

}