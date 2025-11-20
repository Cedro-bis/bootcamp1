import 'package:bootcamp1/exo1.dart';
import 'package:bootcamp1/exo10.dart';
import 'package:bootcamp1/exo5.dart';
import 'package:bootcamp1/exo6.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Final());
}
class Final extends StatefulWidget {
  const Final({super.key});

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    FirstApp(),
    MyApp5(),
    MyApp6(),
    MyApp10(),
  ];
  void updateIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black,), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.book, color: Colors.black,), label: 'Proverbs'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.black,), label: 'Contacts')
        ],
        currentIndex: _selectedIndex,
          onTap: updateIndex,
          selectedItemColor: Colors.red,
        ),
      ),
    );
  }
}
