import 'package:flutter/material.dart';
import 'package:places_to_ride/pages/places_form_page.dart';
import 'package:places_to_ride/pages/places_list_page.dart';
import 'package:places_to_ride/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const Places(),
      routes: {
        AppRoutes.placeForm: (ctx) => const PlaceFormPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
