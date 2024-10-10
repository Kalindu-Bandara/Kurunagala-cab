import 'package:kurunagala_cab/data/data.model/car.dart';

abstract class CarState {}

class CarsLoading extends CarState {}

class CarsLoaded extends CarState {
  final List<car> cars;
  CarsLoaded(this.cars);
}

class CarsError extends CarState {
  final String message;
  CarsError(this.message);
}