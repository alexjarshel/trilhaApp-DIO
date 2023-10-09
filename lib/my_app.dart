import 'package:flutter/material.dart';
import 'package:trilhapp/page/home_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

