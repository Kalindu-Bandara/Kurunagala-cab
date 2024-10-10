import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kurunagala_cab/data/data.model/car.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  Future<List<car>> getCars() async{
    var snapshot = await firestore.collection('cars').get();
    return snapshot.docs.map((doc) => car.fromMap(doc.data())).toList();
  }
}