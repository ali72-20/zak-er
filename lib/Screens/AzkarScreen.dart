import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Azkarscreen extends StatefulWidget {
  const Azkarscreen({super.key});

  @override
  State<Azkarscreen> createState() => _AzkarscreenState();
}

class _AzkarscreenState extends State<Azkarscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102A2B),
      appBar: AppBar(
        title: const Text(
          "Sebha App",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff102A2B),
        centerTitle: true,
      ),

    );
  }
}

