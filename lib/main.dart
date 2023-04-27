import 'package:flutter/material.dart';
import 'package:places_to_ride/pages/place_detail_page.dart';
import 'package:places_to_ride/pages/places_form_page.dart';
import 'package:places_to_ride/pages/places_list_page.dart';
import 'package:places_to_ride/providers/great_places.dart';
import 'package:places_to_ride/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Places(),
        routes: {
          AppRoutes.placeForm: (ctx) => const PlaceFormPage(),
          AppRoutes.placeDetail: (ctx) => const PlaceDetailScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
