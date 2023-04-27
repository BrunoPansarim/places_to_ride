import 'package:flutter/material.dart';
import 'package:places_to_ride/pages/map_page.dart';

import '../models/places.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Place? place = ModalRoute.of(context)!.settings.arguments as Place?;
    return Scaffold(
      appBar: AppBar(
        title: Text(place!.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.file(
              place.image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 10),
          Text(place.location!.address!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
              )),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.map),
            label: const Text('Ver no mapa'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (ctx) => MapPage(
                  isReadOnly: true,
                  initialLocation: place.location!,
                  )
                )
              );
            },
          )
        ],
      ),
    );
  }
}
