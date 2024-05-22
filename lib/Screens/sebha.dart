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
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff102A2B),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                Azkar[currentZekr],
                style: const TextStyle(
                    color: Colors.white, fontSize: 48, fontFamily: 'Reem'),
              ),
            ),
           const Spacer(
              flex: 1,
            ),
            const Text(
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
                style: const TextStyle(
                    color: Color(
                      0xffF6AF58,
                    ),
                    fontSize: 76,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
          const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                if (counter == 33) {
                  counter = -1;
                  currentZekr++;
                  if (currentZekr == Azkar.length) currentZekr = 0;
                }
                setState(
                  () {
                    counter++;
                  },
                );
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
              child: const Text(
                "Reset",
                style: const TextStyle(fontFamily: 'Poppins', color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff5D8082),
                elevation: 24,
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
