import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:places_to_ride/models/places.dart';

class MapPage extends StatefulWidget {
  final PlaceLocation initialLocation;
  final bool isReadOnly;

  const MapPage(
      {this.initialLocation = const PlaceLocation(
        latitude: 37.419857,
        longitude: -122.078827,
      ),
        this.isReadOnly = false,
        Key? key})
      : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  LatLng? _pickedPosition;

  void _selectPosition(LatLng position) {
    setState(() {
      _pickedPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoogleMap'),
        actions: <Widget> [
          if (!widget.isReadOnly)
          IconButton(icon: const Icon(Icons.check),
            onPressed: _pickedPosition == null ? null : () {
              Navigator.of(context).pop(_pickedPosition);
            }
          )
        ]
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            widget.initialLocation.latitude,
            widget.initialLocation.longitude,
          ),
          zoom: 13,
        ),
        onTap: widget.isReadOnly ? null : _selectPosition,
        markers: _pickedPosition == null
            ? {}
            : {
                Marker(
                  markerId: const MarkerId('p1'),
                  position: _pickedPosition!,
                  ),
              },
      ),
    );
  }}