import 'package:kurunagala_cab/data/data.model/car.dart';
import 'package:kurunagala_cab/data/datasources/firebase_car_data_source.dart';
import 'package:kurunagala_cab/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<car>> fetchCars() {
    return dataSource.getCars();
  }
}