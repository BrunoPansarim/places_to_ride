import 'package:flutter/material.dart';

class PlaceFormPage extends StatefulWidget {
  const PlaceFormPage({super.key});

  @override
  State<PlaceFormPage> createState() => _PlaceFormPageState();
}

class _PlaceFormPageState extends State<PlaceFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
      ),
      body: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
