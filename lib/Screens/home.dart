import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sebha/Models/SalahTime.dart';

import '../Models/AzkarComp.dart';
import 'HomePage.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102A2B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin:
                  EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 100),
              decoration: const BoxDecoration(
                color: Color(0xffF6AF58),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: AzkarComp(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Salahtime(),
            ),
          ),
        ],
      ),
    );
  }
}
