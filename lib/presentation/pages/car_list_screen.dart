import 'package:flutter/material.dart';
import 'package:kurunagala_cab/data/data.model/car.dart';
import 'package:kurunagala_cab/presentation/widgets/car_card.dart';


class CarListScreen extends StatelessWidget {
  
  final List<car> cars = [
      car(model: 'BMW M', distance: 870, fuelCapacity: 50, pricePerHour: 45),
      car(model: 'BMW M', distance: 870, fuelCapacity: 50, pricePerHour: 45),
      car(model: 'BMW M', distance:870, fuelCapacity: 50, pricePerHour: 45),
      car(model: 'BMW M', distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context,index){
          return CarCard(car: cars[index]);
        }
        ),
    );
  }
}