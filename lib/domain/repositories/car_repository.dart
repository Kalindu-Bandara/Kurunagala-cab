import 'package:kurunagala_cab/data/data.model/car.dart';

abstract class CarRepository {
  Future<List<car>> fetchCars();
}