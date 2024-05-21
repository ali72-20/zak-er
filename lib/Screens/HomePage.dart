import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebha/Screens/home.dart';
import 'package:sebha/Screens/sebha.dart';
import 'package:sebha/Screens/settings.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<Homepage> {
  int _currentIndex = 0;
  List<Widget> body = const [home(), sebha(), settings()];
  String path = 'assets/images/tasbihpng.png';

  void onItemTap(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  List<BottomNavigationBarItem> SelectedList() {
    if (_currentIndex == 1) {
      return BottonNavList2;
    }
    return BottonNavList1;
  }

  List<BottomNavigationBarItem> BottonNavList1 = [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: "Sebha",
      icon: Image.asset(
        'assets/images/tasbihpng.png',
        width: 24,
        height: 24,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Settings',
      icon: Icon(Icons.settings),
    ),
  ];

  List<BottomNavigationBarItem> BottonNavList2 = [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: "Sebha",
      icon: Image.asset(
        'assets/images/selectedSebha.png',
        width: 24,
        height: 24,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Settings',
      icon: Icon(Icons.settings),
    ),
  ];

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
        backgroundColor: Color(0xff1391A2),
        centerTitle: true,
      ),
      body: body.elementAt(_currentIndex),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
           Radius.circular(30.0)
          ),
          child: BottomNavigationBar(
            iconSize: 24,
            selectedItemColor: Colors.white,
            backgroundColor: Color(0xff1391A2),
            currentIndex: _currentIndex,
            onTap: onItemTap,
            items: SelectedList(),
            elevation: 21,
          ),
        ),
      ),
    );
  }
}
