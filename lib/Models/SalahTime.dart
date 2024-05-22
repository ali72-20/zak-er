import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebha/Models/SalahTimeComponent.dart';

class Salahtime extends StatefulWidget {
  const Salahtime({super.key});

  @override
  State<Salahtime> createState() => _SalahtimeState();
}

class _SalahtimeState extends State<Salahtime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40,right: 10,left: 10,bottom: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xff5D8082),),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(40),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: const Color(0xff5D8082),
                borderRadius: BorderRadius.circular(20),),
            child: const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Cairo, Egypt",
                style: TextStyle(
                    fontFamily: 'Poppins', color: Colors.white),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                salahTimeComp(SalahTime: '4:00 AM', SalahName: 'Fager'),
                salahTimeComp(SalahTime: '1:00 PM', SalahName: 'Zuhur'),
                salahTimeComp(SalahTime: '4:00 PM', SalahName: 'Aser'),
                salahTimeComp(SalahTime: '6:30 PM', SalahName: 'Magreb'),
                salahTimeComp(SalahTime: '9:14 PM', SalahName: 'Eshaa'),
              ],
            ),
          ),
          Spacer(
            flex: 20,
          ),
        ],
      ),
    );
  }
}
