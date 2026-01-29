void main() {

  final WindPlant  windPlant = WindPlant(initialEnergy: 100);
  print(' wind: ${ chargePhone( windPlant ) } ');

}

double chargePhone( EnergyPlant plant) {

  if ( plant.energyLeft < 10 ) {
    throw Exception('No hay suficiente energía');
  }

  return plant.energyLeft - 10;

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
  void consumeEnergy( double amount ) {
    throw UnimplementedError();
  }

}

// Cuando extendemos hacemos uso de la herencia.
class WindPlant extends EnergyPlant {

  double initialEnergy;

  WindPlant({
    required this.initialEnergy
  }) : super( energyLeft: initialEnergy, type: PlantType.wind );

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }

}