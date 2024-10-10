// ignore: camel_case_types
class car{
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  car({required this.model, required this.distance, required this.fuelCapacity, required this.pricePerHour});

  factory car.fromMap(Map<String, dynamic> map) {
    return car(
      model: map['model'],
      distance: map['distance'],
      fuelCapacity: map['fuelCapacity'],
      pricePerHour: map['pricePerHour']
    );
  }

  
  
}