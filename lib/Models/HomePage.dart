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
  List<Widget> body = const [home(), settings(), sebha()];

  void onItemTap(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xff1391A2),
        currentIndex: _currentIndex,
        onTap: onItemTap,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
