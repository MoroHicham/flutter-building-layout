import 'package:flutter/material.dart';

// Main function

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Building Layouts',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Application Bar'),
          ),
          body: const Center(
            child: Text('THIS IS MY FIRST LAYOUT WIDGET'),
          )),
    );
  }
}
