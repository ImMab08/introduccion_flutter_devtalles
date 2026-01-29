void main() {

  final Square cuadrado = Square(side: 20);
  print('Cuadrado: ${ cuadrado.calculateArea() }');

}

class Square {

  // con un _ ponemos la propiedad en privado.
  // Es decir que solo se puede usar dentro de la clase.
  double _side; // side * side

  Square({ required double side })
    : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value ${ value }');
    if ( value < 0 ) throw ' Value must be >= 0';
    
    _side = value;

  }
  
  double calculateArea() {
    return _side * _side;
  }

}