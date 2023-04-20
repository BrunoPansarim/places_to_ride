import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places_to_ride/models/places.dart';
import 'package:places_to_ride/utils/db_util.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  Future<void> carregarPlaces() async {
    final dataList = await DbUtil.getData('places');
    _items = dataList.map(
      (item) => Place(
      id: item['id'],
      title: item['title'],
      image: File(item['image']),
      location: null,
    ),
    ).toList();
    notifyListeners();
  }

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
      location: null,
    );

    _items.add(novoLugar);
    DbUtil.insert('places', {
      'id': novoLugar.id,
      'title': novoLugar.title,
      'image': novoLugar.image.path,
    });
    notifyListeners();
  }

}
