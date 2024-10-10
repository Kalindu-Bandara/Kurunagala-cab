import 'package:kurunagala_cab/data/data.model/car.dart';
import 'package:kurunagala_cab/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<car>> call() async {
    return await repository.fetchCars();
  }
}