import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurunagala_cab/data/data.model/car.dart';
import 'package:kurunagala_cab/injection_container.dart';
import 'package:kurunagala_cab/presentation/bloc/car_bloc.dart';
import 'package:kurunagala_cab/presentation/bloc/car_event.dart';
import 'package:kurunagala_cab/presentation/pages/book_page.dart';
import 'package:kurunagala_cab/presentation/pages/car_details_page.dart';
import 'package:kurunagala_cab/presentation/pages/car_list_screen.dart';
import 'package:kurunagala_cab/presentation/pages/maps_detail_page.dart';
import 'package:kurunagala_cab/presentation/pages/onboarding_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnboardingPage(),
      ),
    );
  }
}