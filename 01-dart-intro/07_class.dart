void main () {

  final Hero wolverine = Hero('Loga', 'Regeneración');
  
  print(wolverine);

}


class Hero {

  String name;
  String power;

  // Constructor para inicializar los parámetros. (Inicialización controlada)
  Hero( String pName, String pPower ) 
    : this.name = pName,
      this.power = pPower;

    // La palabra 'this' es opcional ya que
    // dart puede inferir automaticamente.

  // OTRA MANERA DE HACERLO.
  // Hero(this.name, this.power)

}