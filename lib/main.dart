import 'package:flutter/material.dart';
import 'package:places_to_ride/pages/places_form_page.dart';
import 'package:places_to_ride/pages/places_list_page.dart';
import 'package:places_to_ride/providers/great_places.dart';
import 'package:places_to_ride/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
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
      ),
    );
  }
}
