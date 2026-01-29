void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;

  // Hay diferentes formas de establecer un dato.
     final List<String> abilities = ["impostor"];
  // final abilities = <String>["impostor"];
  // final abilities = ["impostor"];

     final List<String> sprintes = ["ditto/front.png", "ditto/back.png"];
  
  //!!! TENER SIEMPRE CUIDADO CON EL TIPO DE DATO Dynamic. !!!
  // dynamic == null
  dynamic errorMesssage = "Hola mundo";
  errorMesssage = true;
  errorMesssage = [1, 2, 3, 4, 5]; // Esto es una lista de datos.
  errorMesssage = {1, 2, 3, 4, 5}; // Esto es un set de datos.
  errorMesssage = () => true; // Esto es una función de retorno.
  errorMesssage = null;


  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprintes
    $errorMesssage
  """);
}