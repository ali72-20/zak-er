import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sebha extends StatefulWidget {
  const sebha({super.key});

  @override
  State<sebha> createState() => _sebhaState();
}

int counter = 0;
List<String> Azkar = [
  'الحمد لله',
  'سبحان الله',
  'لا اله الا الله',
  'الله اكبر'
];
int currentZekr = 0;
class _sebhaState extends State<sebha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102A2B),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                Azkar[currentZekr],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontFamily: 'Reem'
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Tasbih counter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "$counter",
                style: TextStyle(
                    color: Color(
                      0xffF6AF58,
                    ),
                    fontSize: 76,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                  if(counter == 34){
                    counter = 0;
                    currentZekr++;
                    if(currentZekr == Azkar.length)
                      currentZekr = 0;
                  }
                });
              },
              child: Image.asset(
                'assets/images/beads.png',
                height: 200,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                  currentZekr = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff1391A2),
                elevation: 24,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
