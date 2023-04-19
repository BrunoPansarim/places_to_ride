import 'dart:collection';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places_to_ride/models/places.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place itemByIndex(int index) {
    return _items[index];
  }

  void addLugar(String title, File image) {
    final novoLugar = Place(
      id: Random().nextDouble().toString(),
      title: title,
      image: image,
      location: 'Indaiatuba'
    );

    _items.add(novoLugar);
    notifyListeners();
  }
}
