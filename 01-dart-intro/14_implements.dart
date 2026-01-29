void main() {

  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant( energyLeft: 1000);

  print(' wind: ${ chargePhone(windPlant) } ');
  print(' nuclear: ${ chargePhone(nuclearPlant) } ');

}

double chargePhone( EnergyPlant plant ) {

  if (plant.energyLeft < 10) {
    throw Exception('No hay energía suficiente');
  }

  return plant.energyLeft - 10;

}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {

  double energyLeft;
  final PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  // Método.
  void consumeEnergy( double amount ) {
    throw UnimplementedError();
  }

}

// ? Cuando extendemos hacemos uso de la herencia.
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

// ? implements
class NuclearPlant implements EnergyPlant {
  
  double energyLeft;
  final PlantType type = PlantType.nuclear;

  NuclearPlant({
    required this.energyLeft
  });

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= ( amount * 0.5 );
  }

  
}