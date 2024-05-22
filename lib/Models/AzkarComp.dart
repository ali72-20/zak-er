import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/AzkarScreen.dart';

class AzkarComp extends StatelessWidget {
  const AzkarComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Remember Azkar",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              Text(
                'Start Morning \n Azkar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 13),
              child: Image(
                image: AssetImage('assets/images/SebhaBack.png'),
                width: 140,
                height: 190,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Azkarscreen();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                elevation: 50,
                backgroundColor: Color(0xff1C5153),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Get Start Now',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins', fontSize: 11),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
