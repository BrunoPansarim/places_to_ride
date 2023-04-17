import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:places_to_ride/widgets/image_input.dart';

class PlaceFormPage extends StatefulWidget {
  const PlaceFormPage({super.key});

  @override
  State<PlaceFormPage> createState() => _PlaceFormPageState();
}

class _PlaceFormPageState extends State<PlaceFormPage> {
  final _titleController = TextEditingController();

  void _submited() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    const ImageInput(),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: _submited,
            icon: const Icon(Icons.add),
            label: const Text('Adicionar'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.greenAccent,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              elevation: 0,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ],
      ),
    );
  }
}
