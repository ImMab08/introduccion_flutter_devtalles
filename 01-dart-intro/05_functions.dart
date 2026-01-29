void main() {

  print(greatEveryone());
  print('Suma: ${ addTwoNumbers( 2, 5 ) }');
  print('Suma 2: ${ addTwoNumbersArrowFunction(20, 20) }');

}

// Función de flecha.
String greatEveryone() => 'Hello everyone!';

// Función tradicional (recibe dos parámetros).
int addTwoNumbers(int a, int b) {
  return a + b;
}

// int addTwoNumbersOptional( int a, [ int b = 0 ]) {}
int addTwoNumbersOptional( int a, [ int? b ] ) {
  b = b ?? 0;
  return a + b;
}

int addTwoNumbersArrowFunction( int a, int b ) => a + b;

