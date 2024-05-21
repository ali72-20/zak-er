import 'package:flutter/material.dart';
import 'package:sebha/Screens/home.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(const Sebha());
}

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }

}
