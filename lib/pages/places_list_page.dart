import 'package:flutter/material.dart';
import 'package:places_to_ride/providers/great_places.dart';
import 'package:places_to_ride/utils/routes.dart';
import 'package:provider/provider.dart';

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
              icon: const Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.placeForm);
              }),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false).carregarPlaces(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
         ConnectionState.waiting
        ? const Center(
          child: CircularProgressIndicator())
          : Consumer<GreatPlaces>(
          child: const Center(
            child: Text('nenhum local'),
          ),
          builder: (ctx, greatPlaces, ch) => greatPlaces.itemsCount == 0
              ? ch!
              : ListView.builder(
                  itemCount: greatPlaces.itemsCount,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(
                        greatPlaces.itemByIndex(i).image,
                      ),
                    ),
                    title: Text(greatPlaces.itemByIndex(i).title),
                    onTap: () {},
                  ),
                ),
        ),
      ),
    );
  }
}
