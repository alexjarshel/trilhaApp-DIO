import 'package:flutter/material.dart';

import '../services/random_number_generator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('Call build');
    return Scaffold(
      appBar: AppBar(title: Text('Random')),
      body: Center(child: Text('Random number = ${randomNumber.toString()}')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay),
        onPressed: () {
          setState(() {
            randomNumber = RandomNumberGenerator.generateNumber(100);
          });
        },
      ),
    );
  }
}
