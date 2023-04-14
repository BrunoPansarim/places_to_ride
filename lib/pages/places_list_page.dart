import 'package:flutter/material.dart';
import 'package:places_to_ride/utils/routes.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('My Places'),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.placeForm);
              }),
        ],
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
