void main() {

}

// No termina con punto y coma (;).
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {

  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  // Método, no implementamos, solo definimos (Extendemos). 
  void consumeEnergy( double amount );

}
