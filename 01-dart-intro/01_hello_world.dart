void main() {
  
  var myName = "Franky";
  
  // Establecer tipo de dato.
  String myName2 = "Hely";
  
  // Al establecer la variable como "final"
  // le decimos a dar que no se podrá cambiar.

     final myName3 = "Vargas";
  
  // myName3 = "López" <--- Esto da error
  // ya que no se puede restablecer.
  
  // Caso contrario puede ser cuando establecemos
  // la variable, con "late" al principio podemos
  // establecerla después.
  
     late final myName4;
     myName4 = "López";
  
  // Con esto establecemos si una variable
  // no va a cambiar con el paso del tiempo, es
  // diferente a final.
  
     const variableConstante = "Constante"; 
  
  // Interpolación de strings
  print("Hola $myName $myName2 $myName3 $myName4");
  print("Hola ${ myName.toLowerCase() }");
  print("Suma ${ 1 + 1 }");
  print(variableConstante);
  
}