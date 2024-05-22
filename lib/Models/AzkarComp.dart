import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AzkarComp extends StatelessWidget {
  const AzkarComp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Remember Azkar",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
