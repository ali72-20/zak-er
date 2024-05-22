import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebha/Models/SalahTime.dart';

class salahTimeComp extends StatelessWidget {
  salahTimeComp({required this.SalahTime, required this.SalahName});

  String SalahTime;
  String SalahName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff5D8082),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '$SalahTime',
              style:const TextStyle(fontFamily: 'Poppins', color: Colors.white),
            ),
           const  Icon(
              Icons.mosque,
              color: Colors.white,
            ),
            Text(
              '$SalahName',
              style: const TextStyle(fontFamily: 'Poppins', color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
