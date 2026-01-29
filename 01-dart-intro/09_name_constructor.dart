void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': '',
    'isAlive': false
  };

  final ironMan = Hero.fromJson(rawJson);

  // final Hero ironMan = Hero(
  //   name: 'Tony Stark', 
  //   power: 'Dinero', 
  //   isAlive: false
  // );

  print(ironMan.toString());
  print('Hero: ${ ironMan.name }');

}

class Hero {

  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  // Constructor
  Hero.fromJson( Map<String, dynamic> json )
    : name = json['name'] != null && json['name'].toString().trim().isNotEmpty
      ? json['name']
      : 'No name found.',
      
      power = json['power'] != null && json['power'].toString().trim().isNotEmpty
      ? json['power']
      : 'No power found.',

      isAlive = json['isAlive'] ?? 'Is dead.';

  @override
  String toString() {
    return '$name, $power, ${ isAlive ? 'Vivito' : 'Muertito' } ';
  }

}